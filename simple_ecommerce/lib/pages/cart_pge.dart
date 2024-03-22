import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:simple_ecommerce/components/my_button.dart';
import 'package:simple_ecommerce/models/product.dart';
import 'package:simple_ecommerce/models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;

    void payButtonPressed(BuildContext context) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          content: Text("User wants to pay connect to your backend..."),
        ),
      );
    }

    void removeItemFromCart(BuildContext context, Product product) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: const Text("Remove this item from your cart?"),
          actions: [
            MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel")),
            MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                  context.read<Shop>().removeFromCart(product);
                },
                child: const Text("Yes")),
          ],
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Cart"),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Column(
          children: [
            Expanded(
              child: cart.isEmpty
                  ? const Center(child: Text("Your cart is empty..."))
                  : ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        final item = cart[index];

                        return ListTile(
                          title: Text(item.name),
                          subtitle: Text(item.price.toStringAsFixed(2)),
                          trailing: IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () => removeItemFromCart(context, item),
                          ),
                        );
                      },
                    ),
            ),

            // Pay button
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: MyButton(
                  onTap: () => payButtonPressed(context),
                  child: const Text("PAY NOW")),
            )
          ],
        ));
  }
}
