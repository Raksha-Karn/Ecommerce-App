import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/components/my_button.dart';
import 'package:minimal_ecommerce/models/product.dart';
import 'package:minimal_ecommerce/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(context: context, builder: (context) => AlertDialog(
      content: const Text("Remove this item from your cart?"),
      actions: [
        MaterialButton(onPressed: () => Navigator.pop(context), child: const Text("Cancel")),
        MaterialButton(onPressed: () {
          Navigator.pop(context);
          context.read<Shop>().removeFromCart(product);
        },
        child: const Text("Yes"),
        )
      ],
    )
    );
  }

  void payButtonPressed(BuildContext context) {
    showDialog(context: context, builder: (context) => AlertDialog(
      content: const Text("User wants to pay! Connect this app to your payment backend."),
      actions: [
        MaterialButton(onPressed: () => Navigator.pop(context), child: const Text("Cancel")),
        MaterialButton(onPressed: () {
          Navigator.pop(context);
        },
        child: const Text("Pay"),
        )
      ],
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart Page"),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty ? const Center(child: Text("Your cart is empty")) : ListView.builder(
            itemCount: cart.length,
            itemBuilder: (context, index) {
              final item = cart[index];

              return ListTile(
                title: Text(item.name),
                subtitle: Text(item.price.toStringAsFixed(2)),
                trailing: IconButton(
                  onPressed: () => removeItemFromCart(context, item),
                  icon: const Icon(Icons.remove),
                ),
              );
            }
            )
            ),

            Padding(
              padding: const EdgeInsets.all(50.0),
              child: MyButton(onTap: () => payButtonPressed(context), child: const Text("Pay Now")),
            )
        ],
      )
    );
  }
}