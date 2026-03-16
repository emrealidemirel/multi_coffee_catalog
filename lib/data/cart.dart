import 'package:multi_coffee_app/models/product.dart';

List<Product> cartItems = [];

void addToCart(Product product) {
  cartItems.add(product);
}