import 'package:e_commerce_app/views/pages/button_navbar.dart';
import 'package:e_commerce_app/views/pages/leading_page.dart';
import 'package:e_commerce_app/views/pages/login_page.dart';
import 'package:e_commerce_app/views/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    //final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());

      case AppRoutes.signPage:
        return MaterialPageRoute(builder: (_) => const SignUpPage());

      case AppRoutes.buttonNavBar:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case AppRoutes.leadingPageRoute:
        return MaterialPageRoute(builder: (_) => const LeadingPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
