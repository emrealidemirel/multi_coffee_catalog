import 'package:flutter/material.dart';
import 'package:multi_coffee_app/data/product_data.dart';
import 'package:multi_coffee_app/pages/cart_page.dart';
import 'package:multi_coffee_app/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

        title: const Text(
          "MULTI COFFEE",
          style: TextStyle(
            fontFamily: "Playfair",
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color: coffeeColor,
          ),
        ),

        centerTitle: true,

        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: coffeeColor),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CartPage(),
                ),
              );
            },
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),

        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,

          physics: const NeverScrollableScrollPhysics(),

          children: products
              .map((product) => ProductCard(product: product))
              .toList(),
        ),
      ),
    );
  }
}