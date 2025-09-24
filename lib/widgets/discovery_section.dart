
import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/text_styles.dart';

class DiscoverySection extends StatelessWidget {
  const DiscoverySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: AppColors.discoveryGradient,
      ),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          Text(
            "Discover our therapies",
            style: AppTextStyles.discoveryTitle,
          ),
          const SizedBox(height: 16),
          Text(
            "Unveil the systematic engineering of wellness and master the precise art of detoxification",
            textAlign: TextAlign.center,
            style: AppTextStyles.discoverySubtitle,
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.accentOrange,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            child: Text("Explore our therapies", style: AppTextStyles.button),
          ),
        ],
      ),
    );
  }
}
