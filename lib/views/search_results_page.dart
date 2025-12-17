import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
final List<Map<String, String>> products = [
  {
    'name': 'Classic Hoodie',
    'image': 'assets/images/Classic Sweatshirt.png',
    'price': '£15.00',
  },
  {
    'name': 'Essential Hoodie',
    'image': 'assets/images/zip_hoodie.png',
    'price': '£14.00',
  },
  {
    'name': 'Signature Hoodie',
    'image': 'assets/images/signature hoodie.png',
    'price': '£32.99',
  },
];


  @override
  Widget build(BuildContext context) {
   return Scaffold(
  appBar: AppBar(title: const Text('Search')),
body: const Padding(
  padding: EdgeInsets.all(16),
  child: Column(
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: 'Search products...',
          border: OutlineInputBorder(),
        ),
      ),
    ],
  ),
),

);

  }
}
