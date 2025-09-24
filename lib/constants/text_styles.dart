
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

// Primary Font - Playfair Display
final TextStyle heading1 = GoogleFonts.playfairDisplay(
  fontSize: 48,
  fontWeight: FontWeight.bold,
  color: darkBrown,
);

final TextStyle heading2 = GoogleFonts.playfairDisplay(
  fontSize: 32,
  fontWeight: FontWeight.bold,
  color: darkBrown,
);

final TextStyle subtitle = GoogleFonts.playfairDisplay(
  fontSize: 24,
  fontWeight: FontWeight.w600,
  color: ayurvedaSecondary,
);

// Secondary Font - Inter
final TextStyle bodyText1 = GoogleFonts.inter(
  fontSize: 16,
  fontWeight: FontWeight.normal,
  color: textGray,
);

final TextStyle bodyText2 = GoogleFonts.inter(
  fontSize: 14,
  fontWeight: FontWeight.normal,
  color: textGray,
);

final TextStyle buttonText = GoogleFonts.inter(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);

// A default text style for easier reference
const TextStyle defaultTextStyle = TextStyle(
  fontFamily: 'Inter',
  color: textGray,
  fontSize: 16,
);

// Specific styles from the old file for compatibility, but updated.
const textGray = Color(0xFF374151); // Copied from old colors file for compatibility for now.

