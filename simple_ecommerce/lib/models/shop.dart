import 'package:flutter/material.dart';
import 'package:simple_ecommerce/models/product.dart';

class Shop extends ChangeNotifier {
  // Products
  final List<Product> _shop = [
    Product(
      name: "Ceramic Planters",
      description:
          "These pots are made from ceramic material, which provides good insulation for plant roots.",
      price: 100,
      imagePath: "assets/1.jpg",
    ),
    Product(
      name: "Terracotta Pots",
      description:
          "Terracotta pots are made from natural clay and have a rustic, earthy appearance.",
      price: 100,
      imagePath: "assets/2.jpg",
    ),
    Product(
      name: "Hanging Baskets",
      description:
          "Hanging baskets are suspended from hooks or brackets, creating a beautiful display of trailing plants.",
      price: 100,
      imagePath: "assets/4.jpg",
    ),
    Product(
      name: "Self-Watering Planters",
      description:
          "These innovative pots have a built-in reservoir that provides water to the plant as needed.",
      price: 100,
      imagePath: "assets/5.jpg",
    ),
  ];

  // user cart
  List<Product> _cart = [];

  // get product and cart
  List<Product> get shop => _shop;
  List<Product> get cart => _cart;

  // add product
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
