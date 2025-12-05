import 'package:flutter/material.dart';

class DiscountPage extends StatelessWidget {
  const DiscountPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Election Discounts'),
      ),
body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            GestureDetector(
  onTap: () {
    Navigator.pushNamed(context, '/product');
  },
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

                Expanded(
                  child: Image.asset(
                    'assets/images/Classic Sweatshirt.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Classic SweatShirts',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                const Text(
                  '£12.00',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/uop shirt.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Classic T-Shirts',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                const Text(
                  '£8.00',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

