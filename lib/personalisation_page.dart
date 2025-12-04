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
              Container(
                height: 260,
                width: double.infinity,
                color: Colors.grey[300],
                child: const Center(
                  child: Text('Product Image'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Personalisation',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '£3.00',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text('Per Line'),
              SizedBox(height: 6),
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
              SizedBox(height: 20),
              Text('Personalisation Line 1'),
              SizedBox(height: 6),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
