import 'package:flutter/material.dart';

class PrintShackAboutPage extends StatelessWidget {
  const PrintShackAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
  body: SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 40),

        Text(
          'The Union Print Shack',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
                const SizedBox(height: 40),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('assets/images/p_about_page.png'),
                width: 140,
                fit: BoxFit.cover,
              ),
      ],
    ),
  ),
      ]
    )
  ),
    );
  
  }

}

