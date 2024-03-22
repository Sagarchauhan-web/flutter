import 'package:flutter/material.dart';
import 'package:simple_ecommerce/models/product.dart';

class Shop extends ChangeNotifier {
  // Products
  final List<Product> _shop = [
    Product(
        name: "Product 1",
        description: "This is product 1",
        price: 100,
        imagePath: '/'),
    Product(
        name: "Product 2",
        description: "This is product 2",
        price: 100,
        imagePath: '/'),
    Product(
        name: "Product 3",
        description: "This is product 3",
        price: 100,
        imagePath: '/'),
    Product(
        name: "Product 4",
        description: "This is product 4",
        price: 100,
        imagePath: '/'),
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
