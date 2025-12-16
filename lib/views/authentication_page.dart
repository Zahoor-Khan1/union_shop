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
child: Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    const Text(
      'The UNION',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Color(0xFF4d2963),
        letterSpacing: 1.2,
      ),
    ),
    const SizedBox(height: 32),
    const Text(
      'Sign in',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    const SizedBox(height: 8),
    const Text(
      'Sign in or create an account',
      style: TextStyle(color: Colors.grey),
    ),
    const SizedBox(height: 24),

SizedBox(
  height: 48,
  child: ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF5B3BE3),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    child: const Text('Sign in with shop'),
  ),
),

const SizedBox(height: 24),

const Row(
  children: [
    Expanded(child: Divider()),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Text('or', style: TextStyle(color: Colors.grey)),
    ),
    Expanded(child: Divider()),
  ],
),

  ],
),
        ),
      ),
    );
  }
}

