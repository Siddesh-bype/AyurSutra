import 'package:flutter/material.dart';
import 'package:myapp/models/product.dart';

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> featuredProducts = [
      const Product(
        name: 'Herbal Oil',
        image: 'https://picsum.photos/seed/herbal-oil/200/200',
        price: 15.99,
      ),
      const Product(
        name: 'Ayurvedic Tea',
        image: 'https://picsum.photos/seed/ayurvedic-tea/200/200',
        price: 9.99,
      ),
      const Product(
        name: 'Herbal Supplement',
        image: 'https://picsum.photos/seed/herbal-supplement/200/200',
        price: 25.99,
      ),
    ];

    return SizedBox(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: featuredProducts.length,
        itemBuilder: (context, index) {
          final product = featuredProducts[index];
          return SizedBox(
            width: 180,
            child: Card(
              color: Colors.grey[200],
              child: Column(
                children: [
                  Image.network(product.image, height: 140, fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(product.name, style: Theme.of(context).textTheme.titleSmall),
                  ),
                  Text('\$${product.price}', style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
