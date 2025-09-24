
import 'package:flutter/material.dart' hide SearchBar;
import 'package:myapp/constants/text_styles.dart';
import 'package:myapp/widgets/therapies_carousel.dart';
import 'package:myapp/widgets/search_bar.dart';
import 'package:myapp/widgets/featured_products.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to AyurSutra',
              style: heading1.copyWith(fontSize: 36),
            ),
            const SizedBox(height: 8),
            Text(
              'Discover the ancient science of healing.',
              style: subtitle.copyWith(fontSize: 20),
            ),
            const SizedBox(height: 32),
            const SearchBar(),
            const SizedBox(height: 32),
            Text(
              'Popular Therapies',
              style: heading2,
            ),
            const SizedBox(height: 16),
            const TherapiesCarousel(),
            const SizedBox(height: 32),
            Text(
              'Featured Products',
              style: heading2,
            ),
            const SizedBox(height: 16),
            const FeaturedProducts(),
          ],
        ),
      ),
    );
  }
}
