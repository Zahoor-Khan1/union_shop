import 'package:flutter/material.dart';
import 'package:union_shop/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Cart')),
      body: cartItems.isEmpty
    ? const Center(
        child: Text('Your cart is empty'),
      )
    : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];

          return ListTile(
            leading: Image.asset(item.image, width: 50),
            title: Text(item.name),
            subtitle: Text(item.price),
          );
        },
      ),

    );
  }
}
