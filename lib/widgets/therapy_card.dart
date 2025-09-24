import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/text_styles.dart';
import 'package:myapp/models/therapy.dart';

class TherapyCard extends StatelessWidget {
  final Therapy therapy;

  const TherapyCard({super.key, required this.therapy});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: AppColors.primaryBackgroundEnd,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    therapy.title,
                    style: AppTextStyles.cardTitle,
                  ),
                ),
                Text(
                  therapy.intensity,
                  style: AppTextStyles.cardIntensity,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              therapy.sanskrit,
              style: AppTextStyles.cardSanskrit,
            ),
            const SizedBox(height: 12),
            Text(
              therapy.description,
              style: AppTextStyles.cardDescription,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
