import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/constants/colors.dart';

class AppTextStyles {
  static final TextStyle appBarTitle = GoogleFonts.playfairDisplay(
    color: AppColors.accentOrange,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle appBarSubtitle = GoogleFonts.notoSansDevanagari(
    color: AppColors.accentOrange,
    fontSize: 14,
  );

  static final TextStyle drawerHeaderTitle = GoogleFonts.playfairDisplay(
    color: AppColors.textWhite,
    fontSize: 24,
  );

  static final TextStyle drawerHeaderSubtitle = GoogleFonts.notoSansDevanagari(
    color: Colors.white70,
    fontSize: 14,
  );

  static final TextStyle drawerItem = GoogleFonts.lato(
    color: AppColors.textWhite,
    fontSize: 16,
  );

  static final TextStyle footerTitle = GoogleFonts.lato(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle footerLink = GoogleFonts.lato(
    color: Colors.white70,
    fontSize: 14,
  );

  static final TextStyle footerText = GoogleFonts.lato(
    color: Colors.white54,
    fontSize: 12,
  );

  static final TextStyle discoveryTitle = GoogleFonts.playfairDisplay(
    color: AppColors.textWhite,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle discoverySubtitle = GoogleFonts.lato(
    color: Colors.white70,
    fontSize: 16,
    height: 1.5,
  );

  static final TextStyle button = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle heading1 = GoogleFonts.playfairDisplay(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textDarkGray,
  );

  static final TextStyle subtitle = GoogleFonts.lato(
    fontSize: 16,
    color: Colors.grey[600],
  );

  static final TextStyle heading2 = GoogleFonts.playfairDisplay(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.textDarkGray,
  );

  static final TextStyle heroTitle = GoogleFonts.playfairDisplay(
    color: AppColors.textWhite,
    fontSize: 48,
    fontWeight: FontWeight.bold,
    shadows: [Shadow(blurRadius: 10.0, color: Colors.black.withAlpha(128))],
  );

  static final TextStyle heroSubtitle = GoogleFonts.lato(
    color: Colors.white,
    fontSize: 18,
  );

  static final TextStyle sacredSciencesHeader = GoogleFonts.playfairDisplay(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textDarkGray,
  );

  static final TextStyle sacredSciencesHeader2 = GoogleFonts.lato(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.textDarkGray,
  );

  static final TextStyle sacredSciencesSubtitle = GoogleFonts.lato(
    fontSize: 16,
    color: Colors.grey[600],
    fontStyle: FontStyle.italic,
  );

  static final TextStyle sacredSciencesDescription = GoogleFonts.lato(
    fontSize: 16,
    color: Colors.grey[800],
    height: 1.5,
  );

  static final TextStyle quoteSanskrit = GoogleFonts.notoSansDevanagari(
    fontSize: 24,
    color: AppColors.textDarkGray,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle quoteTranslation = GoogleFonts.lato(
    fontSize: 18,
    color: AppColors.textDarkGray,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle quoteExplanation = GoogleFonts.lato(
    fontSize: 16,
    color: Colors.grey[700],
    height: 1.4,
  );

  static final TextStyle statsNumber = GoogleFonts.playfairDisplay(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: AppColors.accentOrange,
  );

  static final TextStyle statsLabel = GoogleFonts.lato(
    fontSize: 16,
    color: AppColors.textDarkGray,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle cardTitle = GoogleFonts.lato(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final TextStyle cardIntensity = GoogleFonts.lato(
    fontSize: 14,
    color: AppColors.accentOrange,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle cardSubtitle = GoogleFonts.notoSansDevanagari(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle cardSanskrit = GoogleFonts.notoSansDevanagari(
    fontSize: 16,
    color: Colors.white.withAlpha(200),
    fontWeight: FontWeight.w500,
  );

  static final TextStyle cardDescription = GoogleFonts.lato(
    fontSize: 14,
    color: Colors.white.withAlpha(220),
  );
}
