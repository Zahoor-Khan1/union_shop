import 'package:flutter/material.dart';

class PrintShackAboutPage extends StatelessWidget {
  const PrintShackAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(height: 40),

        const Text(
          'The Union Print Shack',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
                const SizedBox(height: 40),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 24),
  child: LayoutBuilder(
    builder: (context, constraints) {
      return Image.asset(
        'assets/images/print1.png',
        width: constraints.maxWidth > 900 ? 700 : 320,
        fit: BoxFit.cover,
      );
      
    },
  ),
),const SizedBox(height: 24),

const Padding(
  padding: EdgeInsets.symmetric(horizontal: 24),
  child: Text(
    'The Union Print Shack is your one-stop shop for custom printing at the University of Portsmouth. We specialise in high-quality personalised clothing, merchandise and promotional materials for students and societies.',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 16,
      color: Colors.black87,
      height: 1.6,
    ),
  ),
),
const SizedBox(height: 16),

const Padding(
  padding: EdgeInsets.symmetric(horizontal: 32),
  child: Text(
    'From hoodies and t-shirts to posters and banners, we help bring your ideas to life with fast turnaround and affordable prices.',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 15,
      color: Colors.grey,
      height: 1.5,
    ),
  ),
),



      ]
    )
  ),
    );
  
  }

}

