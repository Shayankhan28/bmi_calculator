import 'package:bmi_calculator/screens/datagive.dart';
import 'package:bmi_calculator/screens/genderpage.dart';
import 'package:bmi_calculator/screens/show_output.dart';
import 'package:bmi_calculator/screens/splash_screen.dart';
import 'package:bmi_calculator/utills/routesName.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> routegenrator(RouteSettings settings) {
    switch (settings.name) {
      case Routesname.SplashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case Routesname.Genderpage:
        return MaterialPageRoute(builder: (context) => Genderpage());
      case Routesname.Datagive:
        return MaterialPageRoute(
          builder: (context) => Datagive(gender: settings.arguments as Map),
        );

      default:
        throw Exception('Route not found');
    }
  }
}
