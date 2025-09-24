import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/widgets/bottom_nav_bar.dart';
import 'package:myapp/widgets/custom_app_bar.dart';
import 'package:myapp/widgets/discovery_section.dart';
import 'package:myapp/widgets/footer.dart';
import 'package:myapp/widgets/hero_section.dart';
import 'package:myapp/widgets/navigation_drawer.dart' as app;
import 'package:myapp/widgets/next_screen.dart';
import 'package:myapp/widgets/quote_card.dart';
import 'package:myapp/widgets/sacred_sciences_header.dart';
import 'package:myapp/widgets/statistics_section.dart';
import 'package:myapp/widgets/therapies_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchQuery = '';
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const app.NavigationDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeroSection(),
            const QuoteCard(),
            const DiscoverySection(),
            const StatisticsSection(),
            const SacredSciencesHeader(),
            Container(
              color: AppColors.darkSectionBackground,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          _searchQuery = value;
                        });
                      },
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search therapies...',
                        hintStyle: TextStyle(color: Colors.white.withAlpha(178)),
                        prefixIcon: Icon(Icons.search, color: Colors.white.withAlpha(178)),
                        filled: true,
                        fillColor: Colors.black.withAlpha(77),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TherapiesList(searchQuery: _searchQuery),
                ],
              ),
            ),
            const NextScreen(),
            const Footer(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
