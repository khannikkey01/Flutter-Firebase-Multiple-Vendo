import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Paswwrod',
            ),
          ),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.yellow.shade900,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Center(
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Continue as Guest',
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 5,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
