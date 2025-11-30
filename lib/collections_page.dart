import 'package:flutter/material.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collections'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shop by Category',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Hoodies'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            ListTile(
              title: Text('T-Shirts'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            ListTile(
              title: Text('Clothing'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            ListTile(
              title: Text('Graduation'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
          ],
        ),
      ),
    );
  }
}
