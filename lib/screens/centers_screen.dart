
import 'package:flutter/material.dart';
import 'package:myapp/models/wellness_center.dart';
import 'package:myapp/widgets/center_card.dart';

class CentersScreen extends StatelessWidget {
  const CentersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<WellnessCenter> wellnessCenters = [
      const WellnessCenter(
        name: 'Serene Sands',
        location: 'Goa, India',
        image: 'https://picsum.photos/seed/serene-sands/400/300',
      ),
      const WellnessCenter(
        name: 'Himalayan Retreat',
        location: 'Rishikesh, India',
        image: 'https://picsum.photos/seed/himalayan-retreat/400/300',
      ),
      const WellnessCenter(
        name: 'Kerala Backwaters',
        location: 'Alleppey, India',
        image: 'https://picsum.photos/seed/kerala-backwaters/400/300',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wellness Centers'),
      ),
      body: ListView.builder(
        itemCount: wellnessCenters.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: CenterCard(center: wellnessCenters[index]),
          );
        },
      ),
    );
  }
}
