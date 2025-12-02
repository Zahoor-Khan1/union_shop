import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: Colors.grey[200],
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          // Column 1 — Opening Hours
          Column(
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
          ),import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: Colors.grey[200],
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Column(
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

            SizedBox(width: 40), 
            Column(
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
          ),
        ],
      ),
    );
  }
}

        ],
      ),
    );
  }
}

