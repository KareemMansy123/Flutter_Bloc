import 'package:flutter/material.dart';
import 'package:news_app/models/dataa.dart';
import 'package:news_app/shared/network/remote/dio_helper.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Dataa? key}) : super();


  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ListView.builder(
        itemCount: 5,
          itemBuilder: (context,index){
            DioHelper.getData(path: 'photos').then((value){
              print(value.data.toString());
              dataa = value.data;
            }).catchError((error){
              print(error.toString());
            });
            return ListTile(
              title: Text(dataa.title[index]),
            );
      })
    );
  }
}
