import 'package:fat_to_fit/Utils/Strings/Color.dart';
import 'package:fat_to_fit/screen/Exercises/ExerciseDetails.dart';
import 'package:fat_to_fit/screen/splashScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Poppins',
        accentColor: ColorSet.primaryColor,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white70
          )
        )
      ),
      themeMode: ThemeMode.dark,
      home: SplashScreen(),
    );
  }
}
