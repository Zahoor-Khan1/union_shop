import 'package:flutter/material.dart';
import 'package:union_shop/views/app_header.dart';

class SalePage extends StatelessWidget {
  const SalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppHeader(),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'SALE',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
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
                  LayoutBuilder(
                    builder: (context, constraints) {
                      int columns;

                      if (constraints.maxWidth >= 900) {
                        columns = 3;
                      } else if (constraints.maxWidth >= 600) {
                        columns = 2;
                      } else {
                        columns = 1;
                      }

                      return GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: columns,
                        crossAxisSpacing: 24,
                        mainAxisSpacing: 32,
                        childAspectRatio: 0.72,
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
                          _SaleProductCard(
                            title: 'Dimple Pop Fidget Keyring',
                            oldPrice: '£2.99',
                            newPrice: '£0.99',
                            imageUrl: 'assets/images/dimple pop.png',
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
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
