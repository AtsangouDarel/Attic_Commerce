import 'package:attic/consts/consts.dart';
import 'package:attic/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attic',
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.transparent,
        appBarTheme: const AppBarTheme(
          //to set app bar icons color
          iconTheme: IconThemeData(
            color: darkFontGrey,
          ),
          // set elvation to 0
          elevation: 0.0,
          backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}

