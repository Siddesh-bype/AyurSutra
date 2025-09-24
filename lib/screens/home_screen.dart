
import 'package:flutter/material.dart';
import 'package:myapp/screens/home_screen_content.dart';
import 'package:myapp/screens/therapies_screen.dart';
import 'package:myapp/screens/centers_screen.dart';
import 'package:myapp/screens/booking_screen.dart';
import 'package:myapp/screens/profile_screen.dart';
import 'package:myapp/widgets/custom_app_bar.dart';
import 'package:myapp/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreenContent(),
    const TherapiesScreen(),
    const CentersScreen(),
    const BookingScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
