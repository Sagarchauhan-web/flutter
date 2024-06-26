import 'package:flutter/material.dart';
import 'package:minimal_food_delivery/auth/login_or_register.dart';
import 'package:minimal_food_delivery/model/restaurant.dart';
import 'package:minimal_food_delivery/pages/login_page.dart';
import 'package:minimal_food_delivery/pages/register_page.dart';
import 'package:minimal_food_delivery/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => Restaurant(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
