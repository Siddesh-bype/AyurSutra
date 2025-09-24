
import 'package:flutter/material.dart';
import 'package:myapp/models/therapy.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:myapp/constants/text_styles.dart';
import 'package:myapp/constants/colors.dart';

class TherapiesCarousel extends StatelessWidget {
  const TherapiesCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Therapy> therapies = [
      Therapy(
        name: 'Abhyanga',
        image: 'https://images.unsplash.com/photo-1599905292211-952d7234d654?q=80&w=2070&auto=format&fit=crop',
        description: 'Warm oil massage to deeply nourish the body.',
      ),
      Therapy(
        name: 'Shirodhara',
        image: 'https://images.unsplash.com/photo-1544161515-cfd836b080e1?q=80&w=2070&auto=format&fit=crop',
        description: 'A continuous stream of warm oil on the forehead.',
      ),
      Therapy(
        name: 'Panchakarma',
        image: 'https://images.unsplash.com/photo-1600334089648-b0d9d3028269?q=80&w=2070&auto=format&fit=crop',
        description: 'A comprehensive detoxification program.',
      ),
      Therapy(
        name: 'Nasya',
        image: 'https://images.unsplash.com/photo-1512290923902-8a9f31a23653?q=80&w=2070&auto=format&fit=crop',
        description: 'Nasal administration of herbal oils.',
      ),
      Therapy(
        name: 'Swedana',
        image: 'https://images.unsplash.com/photo-1585832349372-a72a951c3ac8?q=80&w=2070&auto=format&fit=crop',
        description: 'An herbal steam therapy for detoxification.',
      ),
    ];

    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: therapies.length,
        itemBuilder: (context, index) {
          final therapy = therapies[index];
          return Container(
            width: 180,
            margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: ayurvedaPrimary.withOpacity(0.1),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: therapy.image,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(color: ayurvedaPrimary),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error, color: raktamokshanaRuby),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(therapy.name, style: subtitle.copyWith(fontSize: 18)),
                        const SizedBox(height: 4),
                        Text(
                          therapy.description,
                          style: bodyText2.copyWith(fontSize: 12),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
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
