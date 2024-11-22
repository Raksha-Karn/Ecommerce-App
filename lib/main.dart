import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/models/shop.dart';
import 'package:minimal_ecommerce/pages/cart_page.dart';
import 'package:minimal_ecommerce/pages/into_page.dart';
import 'package:minimal_ecommerce/pages/shop_page.dart';
import 'package:minimal_ecommerce/themes/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      }
    );
  }
}
