import 'package:flutter/material.dart';

class SalePage extends StatelessWidget {
  const SalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SALE'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Don't miss out! Get yours before they're all gone!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 12),
                const Text(
                  'All prices shown are inclusive of the discount. 🛒',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 32),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: const [
                    _SaleProductCard(
                      title: 'Recycled Notebook',
                      oldPrice: '£17.00',
                      newPrice: '£10.99',
                      imageUrl: 'assets/images/recycable notebook.png',
                    ),
                    _SaleProductCard(
                      title: 'Classic Hoodie',
                      oldPrice: '£3.99',
                      newPrice: '£1.99',
                      imageUrl: 'assets/images/p cable.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SaleProductCard extends StatelessWidget {
  final String title;
  final String oldPrice;
  final String newPrice;
  final String imageUrl;

  const _SaleProductCard({
    required this.title,
    required this.oldPrice,
    required this.newPrice,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 6),
        Text(title, style: const TextStyle(fontSize: 14)),
        Text(
          oldPrice,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        Text(
          newPrice,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4d2963),
          ),
        ),
      ],
    );
  }
}
