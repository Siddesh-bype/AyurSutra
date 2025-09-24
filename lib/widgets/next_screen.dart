
import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/text_styles.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: AppColors.darkSectionBackground,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Ready to Start Your Wellness Journey?",
            textAlign: TextAlign.center,
            style: AppTextStyles.sacredSciencesHeader2.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 20),
          Text(
            "Our experts are here to guide you on your path to holistic wellness. Book a free consultation to create a personalized Panchakarma plan tailored to your unique needs.",
            textAlign: TextAlign.center,
            style: AppTextStyles.sacredSciencesDescription,
          ),
          const SizedBox(height: 32),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.calendar_today_outlined, size: 20),
            label: const Text("Book a Free Consultation"),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.accentOrange,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            ),
          ),
          const SizedBox(height: 12),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.phone_in_talk, size: 18),
            label: const Text("Talk to an expert"),
            style: TextButton.styleFrom(foregroundColor: AppColors.accentOrange),
          )
        ],
      ),
    );
  }
}
