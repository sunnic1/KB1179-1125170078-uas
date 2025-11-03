import 'package:flutter/material.dart';
import 'screen/splash_screen_1.dart'; // arahkan ke halaman pertama

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Onboarding App",
      home: SplashScreen1(), // ⬅️ mulai dari halaman pertama
    );
  }
}
