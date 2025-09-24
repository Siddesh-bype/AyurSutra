
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: warmWhite,
      shape: Border(bottom: BorderSide(color: ayurvedaLight.withOpacity(0.5), width: 1)),
      title: Row(
        children: [
          SvgPicture.asset(
            'assets/images/logo.svg',
            height: 40,
            colorFilter: const ColorFilter.mode(ayurvedaPrimary, BlendMode.srcIn),
          ),
          const SizedBox(width: 8),
          RichText(
            text: TextSpan(
              style: GoogleFonts.playfairDisplay(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: ayurvedaPrimary,
              ),
              children: <TextSpan>[
                const TextSpan(text: 'AyurSutra'),
                TextSpan(
                  text: ' आयुरसूत्र',
                  style: GoogleFonts.notoSansDevanagari(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                     color: ayurvedaSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined, color: ayurvedaAccent, size: 28),
          onPressed: () {
            // Handle notification icon tap
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
