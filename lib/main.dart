
import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AyurSutra',
      theme: ThemeData(
        primaryColor: AppColors.accentOrange,
        scaffoldBackgroundColor: AppColors.primaryBackgroundStart,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.accentOrange),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
