import 'package:e_commerce_app/views/widgets/auth_header.dart';
import 'package:e_commerce_app/views/widgets/custom_row.dart';
import 'package:e_commerce_app/views/widgets/social_login_section.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/utilities/widgets/text_form_field.dart';
import 'package:e_commerce_app/views/widgets/primary_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _usernameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              top: screenHeight * 0.130,
              right: 16,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const AuthHeader(title: 'Login'),
                  SizedBox(height: screenHeight * 0.089),
                  CustomTextField(
                    controller: _usernameController,
                    focusNode: _usernameFocusNode,
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    validator: 'Please enter your email',
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      if (_formKey.currentState!.validate()) {
                        _passwordFocusNode.requestFocus();
                      }
                    },
                  ),
                  const SizedBox(height: 8),
                  CustomTextField(
                    controller: _passwordController,
                    focusNode: _passwordFocusNode,
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    validator: 'Please enter your password',
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (_) {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Center(
                              child: Text('Login Successful'),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomRow(
                    displayText: 'Forgot your password?',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Text('Forgot Password'),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 32),
                  PrimaryButton(
                    text: 'LOGIN',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Center(
                              child: Text('Login Successful'),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 32),
                  CustomRow(
                    displayText: 'Don\'t have an account? Register',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Text('Register'),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: screenHeight * 0.170),
                  const SocialLoginSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
