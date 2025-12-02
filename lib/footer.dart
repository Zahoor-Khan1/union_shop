import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Wrap(
        spacing: 40,
        runSpacing: 24,
        children: [
          // Column 1 — Opening Hours
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Opening Hours',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('Monday - Friday'),
              Text('10am - 4pm'),
              SizedBox(height: 6),
              Text('Outside Term Time'),
              Text('10am - 3pm'),
              SizedBox(height: 6),
              Text('Online orders available 24/7'),
            ],
          ),

          const SizedBox(width: 40),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Help & Information',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('Delivery Information'),
              SizedBox(height: 6),
              Text('Returns Policy'),
              SizedBox(height: 6),
              Text('Contact Us'),
              SizedBox(height: 6),
              Text('Privacy Policy'),
            ],
          ),
          const SizedBox(width: 40),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Latest Offers',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('Sign up to receive the latest offers:'),
              const SizedBox(height: 8),
              const SizedBox(
                width: 160,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Your email',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Subscribe'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
