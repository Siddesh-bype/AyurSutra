
import 'package:flutter/material.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AyurSutraApp extends StatelessWidget {
  const AyurSutraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AyurSutra',
      theme: ThemeData(
        primaryColor: primaryOrange,
        scaffoldBackgroundColor: backgroundCream,
        colorScheme: const ColorScheme.light().copyWith(
          primary: primaryOrange,
          secondary: accentGreen,
        ),
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ).copyWith(
          displayLarge: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: textGray,
          ),
          titleLarge: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: textGray,
          ),
          bodyMedium: const TextStyle(
            fontSize: 16,
            color: textGray,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: backgroundCream,
          elevation: 0,
          iconTheme: IconThemeData(color: textGray),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryOrange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
