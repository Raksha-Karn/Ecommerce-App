import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/models/product.dart';

class Shop extends ChangeNotifier{
  final List<Product> _shop = [
    Product(
      name: "T-Shirt",
      price: 10,
      description: "This is a T-Shirt",
      imagePath: "assets/t-shirt.jpeg",
    ),
    Product(
      name: "Shirt",
      price: 20,
      description: "This is a Shirt",
      imagePath: "assets/shirt.jpeg",
    ),
    Product(
      name: "Pants",
      price: 30,
      description: "This is a Pants",
      imagePath: "assets/pant.jpeg",
    ),
    Product(
      name: "Socks",
      price: 40,
      description: "This is a Socks",
      imagePath: "assets/socks.jpg",
    ),
  ];

  List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }
}