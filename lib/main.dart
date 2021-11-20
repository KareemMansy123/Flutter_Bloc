import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/news_layout.dart';
import 'package:news_app/shared/network/remote/dio_helper.dart';

import 'Modules/login/login_screen.dart';

void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.blue
          ),
          backgroundColor: Colors.blue,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          )
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          elevation: 20.0
        ),
      ),
      // home: const NewsLayout(),
      home: LoginScreen(),
    );
  }
}
