import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';

void main() => runApp(MaxFitApp());

class MaxFitApp extends StatelessWidget {
  const MaxFitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Max Fitness',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(50, 65, 85, 1),
        textTheme: TextTheme(titleMedium: TextStyle(color: Colors.white)),
      ),
      home: HomePage(),
    );
  }
}
