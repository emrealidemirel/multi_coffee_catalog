import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MultiCoffeeApp());
}

class MultiCoffeeApp extends StatelessWidget {
  const MultiCoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Multi Coffee",
      home: HomePage(),
    );
  }
}