import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/text_styles.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkSectionBackground,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFooterColumn("Company", ["About", "Careers", "Press"]),
              _buildFooterColumn("Product", ["Features", "Pricing", "Security"]),
              _buildFooterColumn("Resources", ["Blog", "Help Center", "Contact"]),
            ],
          ),
          const SizedBox(height: 30),
          const Divider(color: Colors.white24),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialIcon(Icons.facebook),
              const SizedBox(width: 20),
              _buildSocialIcon(Icons.g_translate),
              const SizedBox(width: 20),
              _buildSocialIcon(Icons.camera_alt),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "© 2024 AyurSutra. All Rights Reserved.",
            style: AppTextStyles.footerText,
          ),
        ],
      ),
    );
  }

  Widget _buildFooterColumn(String title, List<String> links) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.footerTitle,
        ),
        const SizedBox(height: 10),
        ...links.map((link) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                link,
                style: AppTextStyles.footerLink,
              ),
            )),
      ],
    );
  }

  Widget _buildSocialIcon(IconData icon) {
    return IconButton(
      icon: Icon(icon, color: Colors.white),
      onPressed: () {
        // Handle social media icon tap
      },
    );
  }
}