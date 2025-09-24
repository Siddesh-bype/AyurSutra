
import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/text_styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: ayurvedaPrimary.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: TextField(
        style: bodyText1.copyWith(color: darkBrown),
        decoration: InputDecoration(
          hintText: 'Search for therapies, products...',
          hintStyle: bodyText1.copyWith(color: ayurvedaAccent.withOpacity(0.8)),
          prefixIcon: const Icon(Icons.search, color: ayurvedaAccent, size: 24),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: ayurvedaLight.withOpacity(0.7)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: ayurvedaLight.withOpacity(0.7)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: const BorderSide(color: ayurvedaPrimary, width: 1.5),
          ),
        ),
      ),
    );
  }
}
