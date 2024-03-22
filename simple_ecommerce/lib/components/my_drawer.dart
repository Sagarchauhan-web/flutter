import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:simple_ecommerce/components/my_list_tile.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            DrawerHeader(
              child: Center(
                child: Icon(Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ),
            const SizedBox(height: 25),

            // Shop Tile
            MyListTile(
                text: "Shop",
                icon: Icons.shop,
                onTap: () => Navigator.pop(context)),
            // cart Tile
            MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/cart_page');
                })
          ]),
          // Shop Tile
          Padding(
              padding: const EdgeInsets.all(20.0),
              child:
                  MyListTile(text: "Exit", icon: Icons.logout, onTap: () {})),
        ],
      ),
    );
  }
}
