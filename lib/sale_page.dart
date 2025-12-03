import 'package:flutter/material.dart';

class SalePage extends StatelessWidget {
  const SalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SALE'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Don't miss out! Get yours before they're all gone!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 12),
                const Text(
                  'All prices shown are inclusive of the discount. 🛒',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 32),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: const [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
