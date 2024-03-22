import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce/components/my_drawer.dart';
import 'package:simple_ecommerce/components/my_product_tile.dart';
import 'package:simple_ecommerce/models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Shop Page"),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'),
            icon: const Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          // Shop subtitle
          Center(
            child: Text("Pick from a selected list of premium products",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary)),
          ),

          // Product List
          SizedBox(
            height: 550,
            child: ListView.builder(
                padding: const EdgeInsets.all(15),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return MyProductTile(product: product);
                },
                itemCount: products.length),
          )
        ],
      ),
    );
  }
}
