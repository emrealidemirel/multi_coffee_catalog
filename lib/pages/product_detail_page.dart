import 'package:flutter/material.dart';
import 'package:multi_coffee_app/data/cart.dart';
import 'package:multi_coffee_app/models/product.dart';
import 'package:multi_coffee_app/utils/format_name.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFFF4EFEA);
    const coffeeColor = Color(0xFF6F4E37);

    return Scaffold(
      backgroundColor: bgColor,

      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: coffeeColor),

        title: Text(
          formatName(product.name),
          style: const TextStyle(
            fontFamily: "Playfair",
            fontWeight: FontWeight.bold,
            color: coffeeColor,
          ),
        ),
      ),

      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(product.image, height: 220),

            const SizedBox(height: 20),

            Text(
              formatName(product.name),
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: "Playfair",
                color: coffeeColor,
              ),
            ),

            Text(
              "\$${product.price}",
              style: const TextStyle(color: coffeeColor),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                product.description,
                style: const TextStyle(color: coffeeColor),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: coffeeColor),

              onPressed: () {
                addToCart(product);

                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text("Added to cart")));
              },

              child: const Text(
                "Add to Cart",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
