
import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/text_styles.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: AppColors.primaryGradient,
      ),
      child: Stack(
        children: [
          // Decorative elements
          const Positioned(
            bottom: 20,
            left: 20,
            child: CircleAvatar(
              backgroundColor: AppColors.iconBlue,
              radius: 20,
            ),
          ),
          const Positioned(
            bottom: 40,
            right: 30,
            child: Icon(Icons.local_florist, color: AppColors.iconBlue, size: 35),
          ),

          // Floral border decoration
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(Icons.spa, color: AppColors.iconGreen, size: 20),
                ),
              ),
            ),
          ),

          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Live with the wisdom of", style: AppTextStyles.heroTitle),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "AyurSutra",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.heroSubtitle,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accentOrange,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: const Text("Explore our therapies"),
                ),
              ],
            ),
          ),

          // Bottom floral border
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(Icons.spa, color: AppColors.iconGreen, size: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
