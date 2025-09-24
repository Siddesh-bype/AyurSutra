
import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/text_styles.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkSectionBackground,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _buildStatCard("5,000+", "Ancient Treatments", Icons.people_outline),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildStatCard("3,000+", "Years of Wisdom", Icons.bookmark_border),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: _buildStatCard("98%", "Success Rate", Icons.check_circle_outline),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildStatCard("25+", "Master Vaidyas", Icons.favorite_border),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildStatCard(String number, String label, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.accentOrange, width: 1),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 30),
          const SizedBox(height: 12),
          Text(
            number,
            style: AppTextStyles.statsNumber,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: AppTextStyles.statsLabel,
          )
        ],
      ),
    );
  }
}
