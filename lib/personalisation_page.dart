import 'package:flutter/material.dart';

class PersonalisationPage extends StatelessWidget {
  const PersonalisationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: const Text('Personalisation'),
    centerTitle: true,
  ),body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Container(
  height: 260,
  width: double.infinity,
  color: Colors.grey[300],
  child: const Center(
    child: Text('Product Image'),
  ),
),
],
    ),
  ),
),

);

  }
}
