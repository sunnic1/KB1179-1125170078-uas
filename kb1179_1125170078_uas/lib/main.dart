import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Class utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NIM: 1125170078, Rifqi Arip Sunni Manurung",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const SplashScreen1(), // memanggil class splash screen 1
    );
  }
}

// Splash Screen 1
class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),

          // Membuat lingkaran warna amber
          Container(
            width: 250,
            height: 250,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
          ),

          const SizedBox(height: 24),

          // Tambahkan widget lain di bawah sini nanti
          const Text(
            'Selamat Datang!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Aplikasi Informasi Mahasiswa',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),

          const SizedBox(height: 32),

          // Bullet kecil
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildDot(true), _buildDot(false), _buildDot(false)],
          ),

          const SizedBox(height: 40),

          // Tombol Continue
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HalamanUtama()),
              );
            },
            child: const Text(
              'Continue',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget helper untuk bullet indicator
  static Widget _buildDot(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.green.shade100,
        shape: BoxShape.circle,
      ),
    );
  }
}

// Halaman Utama
class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Utama")),
      body: const Center(
        child: Text(
          "Selamat Datang di Halaman Utama!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
