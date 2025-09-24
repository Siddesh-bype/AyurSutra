
import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/text_styles.dart';

class SacredSciencesHeader extends StatelessWidget {
  const SacredSciencesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkSectionBackground,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        children: [
          Text(
            "Our Therapies",
            style: AppTextStyles.sacredSciencesHeader,
          ),
          const SizedBox(height: 12),
          Text(
            "Explore our wellness packages and discover the right therapy for you.",
            textAlign: TextAlign.center,
            style: AppTextStyles.sacredSciencesSubtitle,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.accentOrange,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            child: const Text("View all therapies"),
          ),
        ],
      ),
    );
  }
}
