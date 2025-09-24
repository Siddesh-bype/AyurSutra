
import 'package:flutter/material.dart' hide SearchBar;
import 'package:myapp/constants/colors.dart';
import 'package:myapp/widgets/therapies_carousel.dart';
import 'package:myapp/widgets/search_bar.dart';
import 'package:myapp/widgets/featured_products.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Find a Therapy',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: textGray,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: SearchBar(),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Popular Therapies',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textGray,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const TherapiesCarousel(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Featured Products',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textGray,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const FeaturedProducts(),
        ],
      ),
    );
  }
}
