import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/homescreen.dart';

void main() {
  runApp(islamiapp());
}

class islamiapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {Homescreen.routeName: (context) => Homescreen()},
      initialRoute: Homescreen.routeName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: .dark,
    );
  }
}
