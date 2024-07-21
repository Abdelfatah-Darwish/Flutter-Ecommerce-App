//import 'package:e_commerce_app/utilities/styles.dart';
import 'package:e_commerce_app/utilities/styles.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, top: 106.0),
          child: Column(
            children: [
              Text(
                'Login',
                style: Styles.headline,
              ),
              const SizedBox(height: 15),
            
            
            ],
          ),
        ),
      ),
    );
  }
}
