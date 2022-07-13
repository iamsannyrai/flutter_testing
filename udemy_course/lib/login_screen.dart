import 'package:flutter/material.dart';
import 'package:testing/home_screen.dart';
import 'package:testing/validator.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                key: const ValueKey("emailField"),
                controller: _emailController,
                decoration: const InputDecoration(hintText: "Enter email"),
                validator: (value) => Validator.vaildateEmail(value ?? ""),
              ),
              TextFormField(
                key: const ValueKey("passwordField"),
                controller: _passwordController,
                decoration: const InputDecoration(hintText: "Enter password"),
                validator: (value) => Validator.validatePassword(value ?? ""),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                key: const ValueKey("loginButton"),
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  }
                },
                child: const Text('Sign In'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
