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
      debugShowCheckedModeBanner: false, // ✅ Menghilangkan tulisan DEBUG
      title: "NIM: 1125170078, Rifqi Arip Sunni Manurung",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const SplashScreen1(),
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

          // Lingkaran amber (bisa diganti gambar nanti)
          Container(
            width: 250,
            height: 250,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 28, // Ukuran besar
              fontWeight: FontWeight.bold, // Membuat huruf tebal
              color: Colors.black, // Warna teks
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Forgot to bring your wallet when you are shopping?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16, // Ukuran lebih kecil dari judul
              color: Colors.green, // Warna hijau muda
              fontWeight: FontWeight.w400, // Sedikit lebih tipis
            ),
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

          const SizedBox(height: 50),

          // ✅ Tambahkan NIM di bagian footer bawah
          const Text(
            'NIM: 1125170078',
            style: TextStyle(fontSize: 14, color: Colors.grey),
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
