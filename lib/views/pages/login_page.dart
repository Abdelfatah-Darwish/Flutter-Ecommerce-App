import 'package:e_commerce_app/utilities/constants/login_page_constants.dart';
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
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: paddingHorizontal,
              top: screenHeight * topPaddingFactor,
              right: paddingHorizontal,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const _LoginHeader(),
                  SizedBox(height: screenHeight * headerVerticalSpacingFactor),
                  CustomTextField(
                    controller: _usernameController,
                    focusNode: _usernameFocusNode,
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    validator: 'Please enter your email',
                  ),
                  const SizedBox(height: formVerticalSpacing),
                  CustomTextField(
                    controller: _passwordController,
                    focusNode: _passwordFocusNode,
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    validator: 'Please enter your password',
                  ),
                  const SizedBox(height: paddingVertical),
                  const _ForgotPasswordRow(),
                  const SizedBox(height: buttonVerticalSpacing),
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
                  const SizedBox(height: buttonVerticalSpacing),
                  const _RegisterRow(),
                  SizedBox(height: screenHeight * footerVerticalSpacingFactor),
                  const _SocialLoginSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginHeader extends StatelessWidget {
  const _LoginHeader();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Login',
        style: Styles.headline,
      ),
    );
  }
}

class _ForgotPasswordRow extends StatelessWidget {
  const _ForgotPasswordRow();

  @override
  Widget build(BuildContext context) {
    return Row(
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
            ),
          ),
        ),
        Icon(
          Icons.arrow_right_alt_rounded,
          size: 24,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}

class _RegisterRow extends StatelessWidget {
  const _RegisterRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Text('Register'),
              ),
            );
          },
          child: Text(
            'Don\'t have an account? Register',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        Icon(
          Icons.arrow_right_alt_rounded,
          size: 24,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}

class _SocialLoginSection extends StatelessWidget {
  const _SocialLoginSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: Text(
            'Or login with social account',
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: socialLoginVerticalSpacing),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: paddingHorizontal),
            SocialAccountButton(
              iconImage: 'assets/images/google.png',
            ),
            SizedBox(width: paddingHorizontal),
            SocialAccountButton(
              iconImage: 'assets/images/facebook.png',
            ),
            SizedBox(width: paddingHorizontal),
          ],
        ),
      ],
    );
  }
}
