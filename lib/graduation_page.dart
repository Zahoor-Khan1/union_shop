import 'package:flutter/material.dart';

class GraduationPage extends StatelessWidget {
  const GraduationPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Graduation'),
      ),
      body: Padding(
  padding: const EdgeInsets.all(20),
  child: GridView.count(
    crossAxisCount: 2,
    crossAxisSpacing: 16,
    mainAxisSpacing: 16,
    children: const [],
  ),
),

    );
  }
  }
