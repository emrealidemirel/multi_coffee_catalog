import 'package:flutter/material.dart';
import 'package:multi_coffee_app/models/product.dart';
import 'package:multi_coffee_app/pages/product_detail_page.dart';
import 'package:multi_coffee_app/utils/format_name.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFFF4EFEA);
    const coffeeColor = Color(0xFF6F4E37);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductDetailPage(product: product),
          ),
        );
      },

      child: Card(
        color: coffeeColor,

        elevation: 3,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),

                child: SizedBox.expand(
                  child: Image.asset(product.image, fit: BoxFit.cover),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8),

              child: Column(
                children: [
                  Text(
                    formatName(product.name),
                    style: const TextStyle(
                      fontFamily: "Playfair",
                      fontWeight: FontWeight.bold,
                      color: bgColor,
                    ),
                  ),

                  Text(
                    "\$${product.price}",
                    style: const TextStyle(color: bgColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
