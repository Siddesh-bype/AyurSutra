
import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/text_styles.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.quoteCardBackground,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Icon(Icons.format_quote, color: AppColors.accentOrange, size: 30),
              const SizedBox(height: 12),
              Text(
                "समदोषः समाग्निश्च समधातु मलक्रियाः।",
                textAlign: TextAlign.center,
                style: AppTextStyles.quoteSanskrit,
              ),
              Text(
                "प्रसन्नात्मेन्द्रिय मनाः स्वस्थ इत्यभिधीयते॥",
                textAlign: TextAlign.center,
                style: AppTextStyles.quoteSanskrit,
              ),
              const SizedBox(height: 16),
              Text(
                "One who has balanced doshas, proper digestion, well-functioning dhatus, and elimination processes, with a cheerful soul, senses and mind is called healthy.",
                textAlign: TextAlign.center,
                style: AppTextStyles.quoteTranslation,
              ),
              const SizedBox(height: 12),
              Text(
                "This ancient verse defines perfect health through the lens of Panchakarma science - a comprehensive purification therapy that restores harmony and activates the body's natural healing intelligence.",
                textAlign: TextAlign.center,
                style: AppTextStyles.quoteExplanation,
              )
            ],
          ),
        ),
      ),
    );
  }
}
