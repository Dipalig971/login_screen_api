import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_screen_api/login_screen/view/home_Screen.dart';
import 'package:login_screen_api/login_screen/view/splash_Screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
