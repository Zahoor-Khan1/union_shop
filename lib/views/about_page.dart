import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About us',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to the Union Shop!',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'We’re dedicated to giving you the very best University branded products, with a range of clothing and merchandise available to shop all year round! We even offer an exclusive personalisation service!',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'All online purchases are available for delivery or instore collection!',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
  Text(
    'We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please don’t hesitate to contact us at hello@upsu.net.',
    style: TextStyle(fontSize: 16),
  ),
  SizedBox(height: 16),
  Text(
    'Happy shopping!',
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
  ),
  SizedBox(height: 8),
  Text(
    'The Union Shop & Reception Team',
    style: TextStyle(fontSize: 16),
  ),
],
        ),
      ),
    );
  }
}
