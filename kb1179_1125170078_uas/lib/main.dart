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

// Splash Screen
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

          // 🖼️ Gambar dari assets + shape circle
          Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/mythical-dragon-beast-anime-style.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 24),

          // 📝 Title - bisa ubah teks sesuai keinginan
          const Text(
            'Welcome to My App',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 8),

          // 🧾 Subtitle (2 baris teks)
          const Text(
            'This is your personal digital assistant.\nMake every task simpler and faster.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.green,
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height: 32),

          // 🔵 Bullet kecil - 3 buah dengan Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(" bullet ke 1 "),
              Text(" bullet ke 2 "),
              Text(" bullet ke 3 "),
            ],
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

          // 🧾 Footer - NIM
          const Text(
            'NIM: 1125170078',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

// Halaman utama
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
