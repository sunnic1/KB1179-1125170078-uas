import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 🌱 Class utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "NIM: 1125170078, Rifqi Arip Sunni Manurung",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const SplashScreen1(),
    );
  }
}

// 💫 Splash Screen
class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),

          // 🖼️ Gambar dari assets
          Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/mythical-dragon-beast-anime-style.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 24),

          // 🏷️ Judul tebal
          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 8),

          // ✨ Subjudul berwarna hijau
          const Text(
            'Jangan Lupa Login Dahulu Untuk Akes Menu Utama!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.green,
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height: 32),

          // 🔘 Bullet kecil
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildDot(true), _buildDot(false), _buildDot(false)],
          ),

          const SizedBox(height: 40),

          // 🟩 Tombol Continue
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 16),
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
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 50),

          // 🧾 NIM di footer
          const Text(
            'NIM: 1125170078',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  // 🔹 Widget indikator dot
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

// 🏠 Halaman utama setelah splash
class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Utama"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          "Selamat Datang di Halaman Utama!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
