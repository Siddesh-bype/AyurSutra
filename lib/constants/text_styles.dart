
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

  static final TextStyle heroTitle = GoogleFonts.notoSansDevanagari(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: AppColors.accentOrange,
    shadows: [Shadow(blurRadius: 2, color: Colors.black12)],
  );

  static final TextStyle heroSubtitle = GoogleFonts.lato(
    fontSize: 16,
    color: AppColors.textDarkGray,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle quoteSanskrit = GoogleFonts.notoSansDevanagari(
    fontSize: 18,
    color: AppColors.accentOrange,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle quoteTranslation = GoogleFonts.lato(
    fontSize: 14,
    color: AppColors.textDarkGray,
    fontStyle: FontStyle.italic,
    height: 1.4,
  );

  static final TextStyle quoteExplanation = GoogleFonts.lato(
    fontSize: 12,
    color: AppColors.textMediumGray,
    height: 1.3,
  );

  static final TextStyle discoveryTitle = GoogleFonts.playfairDisplay(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textDarkGray,
  );

  static final TextStyle discoverySubtitle = GoogleFonts.lato(
    fontSize: 16,
    color: AppColors.textMediumGray,
    height: 1.5,
  );

  static final TextStyle button = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle statsNumber = GoogleFonts.oswald(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );

  static final TextStyle statsLabel = GoogleFonts.lato(
    fontSize: 12,
    color: AppColors.unselectedNavItem,
  );

  static final TextStyle sacredSciencesHeader = GoogleFonts.playfairDisplay(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );

    static final TextStyle sacredSciencesHeader2 = GoogleFonts.playfairDisplay(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );

  static final TextStyle sacredSciencesSubtitle = GoogleFonts.notoSansDevanagari(
    fontSize: 16,
    color: AppColors.accentOrange,
  );

  static final TextStyle sacredSciencesDescription = GoogleFonts.lato(
    fontSize: 14,
    color: AppColors.unselectedNavItem,
    height: 1.4,
  );

  static final TextStyle therapyCardTitle = GoogleFonts.playfairDisplay(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textDarkGray,
  );

  static final TextStyle therapyCardSubtitle = GoogleFonts.lato(
    fontSize: 16,
    color: AppColors.textMediumGray,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle therapyCardSanskrit = GoogleFonts.notoSansDevanagari(
    fontSize: 14,
    color: AppColors.accentOrange,
  );

  static final TextStyle therapyCardDescription = GoogleFonts.lato(
    fontSize: 14,
    color: AppColors.textDarkGray,
    height: 1.4,
  );

  static final TextStyle therapyCardIntensity = GoogleFonts.lato(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle bottomNavLabel = GoogleFonts.lato(
    fontSize: 12,
  );
}
