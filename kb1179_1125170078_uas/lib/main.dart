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
      title: "Splash Screen Example",
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
          // 🖼️ Gambar
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

          const SizedBox(height: 20),

          // 📝 Title dan subtitle
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Forgot to bring your wallet\nwhen you are shopping?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.green),
          ),

          const SizedBox(height: 30),

          // 🔘 Bullet indicators (Row di tengah)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildDot(true), _buildDot(false), _buildDot(false)],
          ),

          const SizedBox(height: 30),

          // 🟩 Tombol Continue (bukan dalam Row)
          Container(
            child: ElevatedButton(
              onPressed: () {
                // TODO: call next page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NextPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4CAF50), // Warna hijau
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Continue",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi bullet (Container bulat)
  static Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive
            ? const Color(0xFF84a98c) // Warna aktif (pallet terang)
            : const Color(0xFFedede9), // Warna non aktif (pallet lembut)
      ),
    );
  }
}

// 🔄 Halaman berikut
class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Next Page")),
      body: const Center(
        child: Text(
          "Selamat datang di halaman berikutnya!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
