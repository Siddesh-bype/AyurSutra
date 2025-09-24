
import 'package:flutter/material.dart';
import 'package:myapp/models/product.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:myapp/constants/text_styles.dart';
import 'package:myapp/constants/colors.dart';

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
          name: 'Ashwagandha',
          image: 'https://images.unsplash.com/photo-1593035345284-6334d61397b9?q=80&w=2070&auto=format&fit=crop',
          price: 15.99),
      Product(
          name: 'Triphala',
          image: 'https://images.unsplash.com/photo-1579847128218-e738a50c3a81?q=80&w=2070&auto=format&fit=crop',
          price: 12.50),
      Product(
          name: 'Brahmi',
          image: 'https://images.unsplash.com/photo-1628102206402-3f4314644a03?q=80&w=2070&auto=format&fit=crop',
          price: 18.00),
      Product(
          name: 'Turmeric',
          image: 'https://images.unsplash.com/photo-1596701062351-8c2c14d1fdd0?q=80&w=2070&auto=format&fit=crop',
          price: 9.99),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: ayurvedaPrimary.withOpacity(0.08),
                blurRadius: 15,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: product.image,
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
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(product.name, style: subtitle),
                      Text(
                        '\$${product.price.toStringAsFixed(2)}',
                        style: bodyText1.copyWith(
                          color: ayurvedaPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8
                              ),
                              textStyle: buttonText.copyWith(
                                  fontSize: 12
                              )
                          ),
                          child: const Text('Add to Cart'))
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
