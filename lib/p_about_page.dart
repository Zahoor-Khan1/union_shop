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
      ],
    ),
  ),
);

  }
}
