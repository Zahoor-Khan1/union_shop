import 'package:flutter/material.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collections'),
      ),
      body:const Center(
  child: Text(
    'Shop by Category',
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  ),
),

    );
  }
}
