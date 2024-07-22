import 'package:e_commerce_app/utilities/styles.dart';
import 'package:e_commerce_app/utilities/widgets/text_form_field.dart';
import 'package:e_commerce_app/views/widgets/primary_button.dart';
import 'package:e_commerce_app/views/widgets/social_account_button.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: 16,
                top: MediaQuery.of(context).size.height * 0.130,
                //top: 106,
                right: 16),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login',
                      style: Styles.headline,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.089),
                  CustomTextField(
                    controller: _usernameController,
                    focusNode: _usernameFocusNode,
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    validator: 'Please enter your email',
                  ),
                  const SizedBox(height: 8),
                  CustomTextField(
                    controller: _passwordController,
                    focusNode: _passwordFocusNode,
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    validator: 'Please enter your password',
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const Text('Forgot Password'),
                            ),
                          );
                        },
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            // decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        size: 24,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  PrimaryButton(
                    text: 'LOGIN',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Center(
                            child: Text('Login Successful'),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const Text('Forgot Password'),
                            ),
                          );
                        },
                        child: Text(
                          'Don\'t have an account?Register',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            // decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        size: 24,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.170),
                  const Center(
                    child: Text(
                      'Or login with social account',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Spacer(),
                      SocialAccountButton(
                        iconImage: 'assets/images/google.png',
                      ),
                      SizedBox(width: 16),
                      SocialAccountButton(
                        iconImage: 'assets/images/facebook.png',
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.070),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
