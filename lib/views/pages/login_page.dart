import 'package:e_commerce_app/utilities/styles.dart';
import 'package:e_commerce_app/utilities/widgets/text_form_field.dart';
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
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, top: 106.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  'Login',
                  style: Styles.headline,
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  controller: _usernameController,
                  focusNode: _usernameFocusNode,
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  validator: 'Please enter your email',
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  controller: _passwordController,
                  focusNode: _passwordFocusNode,
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  validator: 'Please enter your password',
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Text('Forgot Password'),
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
                    const SizedBox(width: 10),
                    Icon(
                      Icons.arrow_right_alt_rounded,
                      size: 24,
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
