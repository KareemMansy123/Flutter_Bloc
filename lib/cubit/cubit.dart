import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Modules/busniess/busniess_screen.dart';
import 'package:news_app/Modules/science/scinece_screen.dart';
import 'package:news_app/Modules/settings_screen/settings_screen.dart';
import 'package:news_app/Modules/sports/sports_screen.dart';
import 'package:news_app/cubit/status.dart';
import 'package:news_app/shared/network/remote/dio_helper.dart';

class NewsCubit extends Cubit<NewsStatus> {
  NewsCubit() : super(NewsInitState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItem = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.business), label: 'Business'),
    const BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Sports'),
    const BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Science'),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
  ];

  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
    SettingsScreen()
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(NewsBottomNavState());
  }

  List<dynamic> business = [];
  List<dynamic> albums = [];

  void getBusiness(){
    emit(NewsBusinessSuccessLoadingState());

    DioHelper.getData(path: 'photos').then((value){
      business = value.data;
      print(business[0]['title']);
      emit(NewsGetBusinessSuccessState());

    }).catchError((error){
      print(error.toString());
      emit(NewsGetBusinessErrorState(error.toString()));
    });
  }

  void getAlbums(){
    emit(NewsBusinessSuccessLoadingState());

    DioHelper.getData(path: 'albums').then((value){
      albums = value.data;
      print(albums[0]['title']);
      emit(NewsGetBusinessSuccessState());

    }).catchError((error){
      print(error.toString());
      emit(NewsGetBusinessErrorState(error.toString()));
    });
  }
}
