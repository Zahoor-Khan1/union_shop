import 'package:flutter/material.dart';

class PersonalisationPage extends StatelessWidget {
  const PersonalisationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personalisation'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/p_about_page.png',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              const Text(
                'Personalisation',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                '£3.00',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              const Text(
                '£3 for one line of text! £5 for two!',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 8),
              const Text(
                'One line of text is 10 characters.',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              const Text('Per Line'),
              const SizedBox(height: 6),
              DropdownButtonFormField<String>(
                items: const [
                  DropdownMenuItem(
                      value: 'one', child: Text('One Line of Text')),
                  DropdownMenuItem(
                      value: 'two', child: Text('Two Lines of Text')),
                ],
                onChanged: (value) {},
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Personalisation Line 1'),
              const SizedBox(height: 6),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Please ensure all spellings are correct before submitting your purchase as we will print your item exactly as provided. Personalised items do not qualify for refunds.',
                style: TextStyle(color: Colors.grey, height: 1.5),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('ADD TO CART'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
