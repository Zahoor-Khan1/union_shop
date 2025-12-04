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
           Image.network(
  'https://shop.upsu.net/cdn/shop/files/upsu_300x300.png?v=1614735854',
  height: 18,
  fit: BoxFit.cover,
),

const SizedBox(width: 16),

TextButton(
  onPressed: () {
    Navigator.pushNamed(context, '/');
  },
  child: const Text(
    'Home',
    style: TextStyle(color: Colors.grey),
  ),
),

const SizedBox(width: 16),

PopupMenuButton<String>(
  onSelected: (value) {
    if (value == 'pride') {
      Navigator.pushNamed(context, '/pride');
    }
    if (value == 'graduation') {
      Navigator.pushNamed(context, '/graduation');
    }
    if (value == 'essential') {
      Navigator.pushNamed(context, '/essential');
    }
  },
  itemBuilder: (context) => const [
    PopupMenuItem(
      value: 'pride',
      child: Text('Pride Collection'),
    ),
    PopupMenuItem(
      value: 'graduation',
      child: Text('Graduation'),
    ),
    PopupMenuItem(
      value: 'essential',
      child: Text('Essential Range'),
    ),
  ],
  child: const Text(
    'Shop',
    style: TextStyle(color: Colors.grey),
  ),
),
const SizedBox(width: 16),

PopupMenuButton<String>(
  onSelected: (value) {
    if (value == 'about_print') {
      Navigator.pushNamed(context, '/about');
    }
    if (value == 'personalisation') {
      Navigator.pushNamed(context, '/personalisation');
    }
  },
  itemBuilder: (context) => const [
    PopupMenuItem(
      value: 'about_print',
      child: Text('About'),
    ),
    PopupMenuItem(
      value: 'personalisation',
      child: Text('Personalisation'),
    ),
  ],
  child: const Text(
    'The Print Shack',
    style: TextStyle(color: Colors.grey),
  ),
),



const SizedBox(width: 16),

TextButton(
  onPressed: () {
    Navigator.pushNamed(context, '/sale');
  },
  child: const Text(
    'SALE!',
    style: TextStyle(color: Colors.grey),
  ),
),

const SizedBox(width: 16),

TextButton(
  onPressed: () {
    Navigator.pushNamed(context, '/about');
  },
  child: const Text(
    'About',
    style: TextStyle(color: Colors.grey),
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

