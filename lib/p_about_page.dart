import 'package:flutter/material.dart';

class PrintShackAboutPage extends StatelessWidget {
  const PrintShackAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: SingleChildScrollView(
  child: Center(
    child: SizedBox(
      width: 800,
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
        'assets/images/p_about_page.png',
        width: constraints.maxWidth > 900 ? 700 : 320,
        fit: BoxFit.cover,
      );
      
      },
  ),
),
const Padding(
  padding: EdgeInsets.symmetric(horizontal: 24),
  child: Text(
    'Make It Yours at The Union Print Shack',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
),
const SizedBox(height: 12),

const Padding(
  padding: EdgeInsets.symmetric(horizontal: 24),
  child: Text(
    "Want to add a personal touch? We’ve got you covered with heat-pressed customisation on all our clothing. Swing by the shop - our team’s always happy to help you pick the right gear and answer any questions.",
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 16,
      height: 1.6,
    ),
  ),
),

const SizedBox(height: 32),

const Padding(
  padding: EdgeInsets.symmetric(horizontal: 24),
  child: Text(
    'Uni Gear or Your Gear - We’ll Personalise It',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
),



        ],
      ),
    ),
    
  ),
),

    );
  
  }

}

