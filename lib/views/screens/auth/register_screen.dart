import 'package:flutter/material.dart';
import 'package:m_vendor_app/views/screens/auth/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome To Nadeem\'s App',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'First Name Required';
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                            labelText: 'First Name',
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Flexible(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Last Name Required';
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                            labelText: 'Last Name',
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email Required';
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password Required';
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 200,
                    child: OutlinedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("Success");
                        } else {
                          print('Bad Credential');
                        }
                      },
                      child: const Text('Sign UP'),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Continue as Geust',
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 5,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      }));
                    },
                    child: const Text(
                      'Already Have an Account',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
