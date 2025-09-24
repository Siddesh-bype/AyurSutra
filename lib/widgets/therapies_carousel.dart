import 'package:flutter/material.dart';
import 'package:myapp/models/therapy.dart';
import 'package:myapp/services/therapy_service.dart';
import 'package:myapp/widgets/therapy_card.dart';

class TherapiesCarousel extends StatefulWidget {
  const TherapiesCarousel({super.key});

  @override
  State<TherapiesCarousel> createState() => _TherapiesCarouselState();
}

class _TherapiesCarouselState extends State<TherapiesCarousel> {
  late Future<List<Therapy>> _therapiesFuture;

  @override
  void initState() {
    super.initState();
    _therapiesFuture = TherapyService().getTherapies();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Therapy>>(
      future: _therapiesFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          final therapies = snapshot.data!;
          return SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: therapies.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: TherapyCard(therapy: therapies[index]),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
