import 'package:bmi_calculator/screens/datagive.dart';
import 'package:bmi_calculator/screens/genderpage.dart';
import 'package:bmi_calculator/utills/routes.dart';
import 'package:bmi_calculator/utills/routesName.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Genderpage(),
      // home: Datagive(),
      initialRoute: Routesname.SplashScreen,
      onGenerateRoute: Routes.routegenrator,
      // title: 'BMI Calculator',
    );
  }
}
