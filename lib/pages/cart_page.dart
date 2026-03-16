import 'package:flutter/material.dart';
import 'package:multi_coffee_app/data/cart.dart';
import 'package:multi_coffee_app/utils/format_name.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
          "CART",
          style: TextStyle(
            fontFamily: "Playfair",
            fontWeight: FontWeight.bold,
            color: coffeeColor,
          ),
        ),

        centerTitle: true,
      ),

      body: cartItems.isEmpty
          ? const Center(
              child: Text("Your cart is empty", style: TextStyle(fontSize: 18)),
            )
          : ListView.builder(
              itemCount: cartItems.length,

              itemBuilder: (context, index) {
                final product = cartItems[index];

                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),

                  child: Row(
                    children: [
                      Image.asset(product.image, width: 50),

                      const SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              formatName(product.name),
                              style: const TextStyle(
                                fontFamily: "Playfair",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: coffeeColor,
                              ),
                            ),

                            const SizedBox(height: 4),

                            Text(
                              "\$${product.price}",
                              style: const TextStyle(color: coffeeColor),
                            ),
                          ],
                        ),
                      ),

                      IconButton(
                        icon: const Icon(Icons.delete, color: coffeeColor),

                        onPressed: () {
                          setState(() {
                            cartItems.removeAt(index);
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
