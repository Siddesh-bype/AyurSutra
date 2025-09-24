import 'package:flutter/material.dart';
import 'package:myapp/screens/home_screen.dart';

class AyurSutraApp extends StatelessWidget {
  const AyurSutraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AyurSutra',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
