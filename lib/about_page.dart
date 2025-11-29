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
        'About the Union Shop',
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 20),
      Text(
        'The University of Portsmouth Students’ Union Shop provides official merchandise, clothing, gifts and essential items for students.',
        style: TextStyle(fontSize: 16),
      ),
      SizedBox(height: 16),
      Text(
        'Our mission is to offer high-quality products at affordable prices while supporting student life on campus.',
        style: TextStyle(fontSize: 16),
      ),
      SizedBox(height: 16),
      Text(
        'All profits made through the shop go back into supporting student activities and services.',
        style: TextStyle(fontSize: 16),
      ),
    ],
  ),
),