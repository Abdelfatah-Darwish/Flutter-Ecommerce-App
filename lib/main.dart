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
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFDDE5F1),
          primary: const Color(0xFF363981),
          secondary: const Color(0xFF3C50D4),
          tertiary: const Color(0xFF7D4CDB),
          error: const Color(0xFFFF4B4B),
          surface: const Color(0xFFFFFFFF),
          onPrimary: const Color(0xFFFFFFFF),
          onSecondary: const Color(0xFFFFFFFF),
          onTertiary: const Color(0xFFFFFFFF),
          onError: const Color(0xFFFFFFFF),
          onSurface: const Color(0xFF292929),
        ),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRoutes.loginPage,
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
    );
  }
}
