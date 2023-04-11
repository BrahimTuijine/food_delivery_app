import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/theme/app_theme.dart';
import 'package:food_delivery_app/core/utils/size_config.dart';
import 'package:food_delivery_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeConfiguration(
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food app',
        theme: AppTheme.light(),
        home: const SplashScreen(),
      ),
    );
  }
}
