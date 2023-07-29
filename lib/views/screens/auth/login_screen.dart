import 'package:flutter/material.dart';
import 'package:m_vendor_app/views/screens/auth/register_screen.dart';

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
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 200,
            child: OutlinedButton(
              onPressed: () {
                print('Login with Terminal');
              },
              child: const Text("Login"),
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
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const RegisterScreen();
                  },
                ),
              );
            },
            child: const Text(
              "I haven't Account yet",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
