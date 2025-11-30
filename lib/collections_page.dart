import 'package:flutter/material.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collections'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Shop by Category',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Shirts'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
          ],
        ),
      ),
    );
  }
}
