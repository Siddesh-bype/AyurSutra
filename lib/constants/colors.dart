
import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryBackgroundStart = Color(0xFFF5F1E8);
  static const Color primaryBackgroundEnd = Color(0xFFE8F5F0);
  static const Color darkSectionBackground = Color(0xFF2A2A2A);
  static const Color accentOrange = Color(0xFFFF8C42);
  static const Color cardBackground = Color(0xE6FFFFFF); // White with 90% opacity
  static const Color textDarkGray = Color(0xFF2C3E50);
  static const Color textMediumGray = Color(0xFF7F8C8D);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color iconYellow = Color(0xFFF1C40F);
  static const Color iconPink = Color(0xFFFF6B9D);
  static const Color iconGreen = Color(0xFF27AE60);
  static const Color iconBlue = Color(0xFF6C7CE0);
  static const Color quoteCardBackground = Color(0xFFFFF8E7);
  static const Color errorColor = Color(0xFFE74C3C);
  static const Color unselectedNavItem = Color(0xFFBDC3C7);

  static const Gradient primaryGradient = LinearGradient(
    colors: [primaryBackgroundStart, primaryBackgroundEnd],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient discoveryGradient = LinearGradient(
    colors: [primaryBackgroundEnd, primaryBackgroundStart],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const Gradient drawerGradient = LinearGradient(
    colors: [Color(0xFF2A2A2A), Color(0xFF1A1A1A)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
