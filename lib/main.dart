import 'package:e_commerce_app/utilities/router/router.dart';
import 'package:e_commerce_app/utilities/router/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF9F9F9),
        primaryColor: const Color(0xFFDB3022),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRoutes.loginPage,
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
    );
  }
}
