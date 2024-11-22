import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/pages/into_page.dart';
import 'package:minimal_ecommerce/pages/shop_page.dart';
import 'package:minimal_ecommerce/themes/light_mode.dart';

void main() {
  runApp(const MainApp());
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
      }
    );
  }
}
