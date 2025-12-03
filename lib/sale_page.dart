import 'package:flutter/material.dart';

class SalePage extends StatelessWidget {
  const SalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sale Collection'),
      ),
      body: const Center(
        child: Text('Sale items will appear here'),
      ),
    );
  }
}
