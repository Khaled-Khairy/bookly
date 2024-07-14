import 'package:booklyzag/features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}