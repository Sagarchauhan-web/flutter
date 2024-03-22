import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce/models/shop.dart';
import 'package:simple_ecommerce/pages/cart_pge.dart';
import 'package:simple_ecommerce/pages/intro_page.dart';
import 'package:simple_ecommerce/pages/shop_page.dart';
import 'package:simple_ecommerce/themes/light_mode.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        });
  }
}
