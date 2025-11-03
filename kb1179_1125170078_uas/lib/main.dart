import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Class utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NIM: 1234567, Ketut",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: SplashScreen1(), // memanggil class splash screen 1
    );
  }
}

// Contoh class Splash Screen 1
class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash Screen 1', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

// Ini adalah contoh code pada saat di-generate, nama class bisa kalian ubah sesuai kebutuhan
class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Utama")),
      body: Center(
        child: Text(
          "Selamat Datang di Halaman Utama!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
