import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  height: 100,
  color: Colors.white,
  child:Column(
  children: [
    Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8),
      color: const Color(0xFF4d2963),
      child: const Text(
        'BIG SALE! OUR ESSENTIAL RANGE HAS DROPPED IN PRICE!',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),

    Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Image.network(
                'https://shop.upsu.net/cdn/shop/files/upsu_300x300.png?v=1614735854',
                height: 18,
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    ),
  ],
),

);
  }
}

