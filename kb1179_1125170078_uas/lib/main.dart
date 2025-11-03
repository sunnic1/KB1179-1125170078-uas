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
      title: "Responsive Splash Screen",
      home: const SplashScreenResponsive(),
    );
  }
}

class SplashScreenResponsive extends StatelessWidget {
  const SplashScreenResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    final textScale = MediaQuery.of(context).textScaleFactor;

    // 🔹 Jika portrait, gunakan Column; jika landscape, gunakan Row
    final isPortrait = orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: isPortrait
              ? _buildPortraitLayout(size, textScale, context)
              : _buildLandscapeLayout(size, textScale, context),
        ),
      ),
    );
  }

  // ====================== 📱 Portrait Layout ===========================
  Widget _buildPortraitLayout(
    Size size,
    double textScale,
    BuildContext context,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),

        // 🔹 Gambar Bulat
        Container(
          width: size.width * 0.5,
          height: size.width * 0.5,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                'assets/images/mythical-dragon-beast-anime-style.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),

        SizedBox(height: size.height * 0.03),

        // 🔹 Judul
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: 24 * textScale,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),

        SizedBox(height: size.height * 0.015),

        // 🔹 Subtitle
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.15),
          child: Text(
            "Forgot to bring your wallet\nwhen you are shopping?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14 * textScale,
              color: Colors.green.shade700,
              height: 1.5,
            ),
          ),
        ),

        SizedBox(height: size.height * 0.04),

        // 🔹 Bullet Indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildDot(true, size),
            _buildDot(false, size),
            _buildDot(false, size),
          ],
        ),

        SizedBox(height: size.height * 0.05),

        // 🔹 Tombol Continue
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: SizedBox(
            height: size.height * 0.06,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NextPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4CAF50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(size.width * 0.02),
                ),
              ),
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 16 * textScale,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        SizedBox(height: size.height * 0.08),
      ],
    );
  }

  // ====================== 💻 Landscape Layout ===========================
  Widget _buildLandscapeLayout(
    Size size,
    double textScale,
    BuildContext context,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 🔹 Gambar di sisi kiri
        Expanded(
          flex: 4,
          child: Container(
            margin: EdgeInsets.all(size.width * 0.05),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/mythical-dragon-beast-anime-style.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        // 🔹 Konten teks di sisi kanan
        Expanded(
          flex: 6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 26 * textScale,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              SizedBox(height: size.height * 0.02),

              Text(
                "Forgot to bring your wallet when you are shopping?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14 * textScale,
                  color: Colors.green.shade700,
                  height: 1.4,
                ),
              ),

              SizedBox(height: size.height * 0.04),

              // 🔹 Bullet Indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(true, size),
                  _buildDot(false, size),
                  _buildDot(false, size),
                ],
              ),

              SizedBox(height: size.height * 0.05),

              // 🔹 Tombol Continue (Responsif)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                child: SizedBox(
                  height: size.height * 0.08,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4CAF50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(size.width * 0.02),
                      ),
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 16 * textScale,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // 🔹 Bullet Indicator
  Widget _buildDot(bool isActive, Size size) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.015),
      width: size.width * 0.025,
      height: size.width * 0.025,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? const Color(0xFF84a98c) : const Color(0xFFedede9),
      ),
    );
  }
}

// ====================== ➡️ Next Page ===========================
class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(title: const Text("Next Page")),
      body: Center(
        child: Text(
          "Selamat datang di halaman berikutnya!",
          style: TextStyle(
            fontSize: 18 * textScale,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
