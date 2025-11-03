import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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

          // 🖼️ Gambar bulat
          Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/mythical-dragon-beast-anime-style.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 24),

          // 🏷️ Title teks hitam di tengah
          const Text(
            'Welcome', // ← Kata-kata
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 12),

          // 📝 Subtitle dua baris
          const Text(
            'Jangan Lupa Login Dulu Ya!!!', // ← ubah sesuai kata kalian
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.green,
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height: 32),

          // 🔵 Indicator bulatan kecil
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildDot(true), _buildDot(false), _buildDot(false)],
          ),

          const SizedBox(height: 40),

          // ▶️ Tombol Continue
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

          // 🧾 NIM footer
          const Text(
            'NIM: 1125170078',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  // Fungsi membuat dot kecil
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
