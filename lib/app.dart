
import 'package:flutter/material.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/text_styles.dart';

class AyurSutraApp extends StatelessWidget {
  const AyurSutraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AyurSutra',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: ayurvedaPrimary,
        scaffoldBackgroundColor: warmWhite,
        colorScheme: const ColorScheme.light().copyWith(
          primary: ayurvedaPrimary,
          secondary: ayurvedaSecondary,
          tertiary: ayurvedaAccent,
          surface: cream,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: darkBrown,
          error: raktamokshanaRuby,
        ),
        textTheme: TextTheme(
          displayLarge: heading1,
          headlineMedium: heading2,
          titleMedium: subtitle,
          bodyMedium: bodyText1,
          bodySmall: bodyText2,
          labelLarge: buttonText,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: warmWhite,
          foregroundColor: darkBrown,
          elevation: 0,
          titleTextStyle: subtitle.copyWith(color: darkBrown),
          iconTheme: const IconThemeData(color: darkBrown),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: ayurvedaPrimary,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            textStyle: buttonText,
          ),
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
             side: BorderSide(color: ayurvedaLight.withOpacity(0.5)),
          ),
          shadowColor: ayurvedaPrimary.withOpacity(0.1),
        )
      ),
      home: const HomeScreen(),
    );
  }
}
