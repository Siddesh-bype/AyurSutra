import 'package:flutter/material.dart';
import 'package:myapp/models/therapy.dart';
import 'package:cached_network_image/cached_network_image.dart';

class TherapyCard extends StatelessWidget {
  final Therapy therapy;

  const TherapyCard({super.key, required this.therapy});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: therapy.image,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(therapy.name, style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(height: 8.0),
                Text(therapy.description, style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
