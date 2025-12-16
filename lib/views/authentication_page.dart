import 'package:flutter/material.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: Container(
          width: 420,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
child: const Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Text(
      'The UNION',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Color(0xFF4d2963),
        letterSpacing: 1.2,
      ),
    ),
    SizedBox(height: 32),
    Text(
      'Sign in',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    SizedBox(height: 8),
    Text(
      'Sign in or create an account',
      style: TextStyle(color: Colors.grey),
    ),
  ],
),
        ),
      ),
    );
  }
}

