
import 'package:flutter/material.dart';
import 'package:myapp/models/therapy.dart';
import 'package:cached_network_image/cached_network_image.dart';

class TherapiesCarousel extends StatelessWidget {
  const TherapiesCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Therapy> therapies = [
      Therapy(
        name: 'Abhyanga',
        image: 'https://picsum.photos/seed/abhyanga/200/200',
        description: 'A full-body massage with warm herbal oils.',
      ),
      Therapy(
        name: 'Shirodhara',
        image: 'https://picsum.photos/seed/shirodhara/200/200',
        description: 'A continuous stream of warm oil on the forehead.',
      ),
      Therapy(
        name: 'Panchakarma',
        image: 'https://picsum.photos/seed/panchakarma/200/200',
        description: 'A detoxification and rejuvenation program.',
      ),
      Therapy(
        name: 'Nasya',
        image: 'https://picsum.photos/seed/nasya/200/200',
        description: 'Nasal administration of herbal oils.',
      ),
      Therapy(
        name: 'Swedana',
        image: 'https://picsum.photos/seed/swedana/200/200',
        description: 'An herbal steam therapy.',
      ),
    ];

    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: therapies.length,
        itemBuilder: (context, index) {
          final therapy = therapies[index];
          return Container(
            width: 160,
            margin: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: CachedNetworkImage(
                    imageUrl: therapy.image,
                    height: 150,
                    width: 160,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  therapy.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
