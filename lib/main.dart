import 'package:analog_clock_flutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:analog_clock_flutter/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Analog Clock",
      theme: ThemeData(),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}
