import 'package:flutter/material.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dating App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF22AC7A),
          primary: const Color(0xFF22AC7A),
        ),
      ),
      home: const DatingScreen(),
    );
  }
}

class DatingScreen extends StatelessWidget {
  const DatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF22D297), Color(0xFF0D8973)],
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            // Resimler Stack'i
            Positioned(
              top: -20,
              left: -37,
              child: _buildImageCard(
                'https://images.unsplash.com/photo-1534528741775-53994a69daeb',
              ),
            ),
            Positioned(
              top: -92,
              left: 83,
              child: _buildImageCard(
                'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6',
              ),
            ),
            Positioned(
              top: -36,
              left: 323,
              child: _buildImageCard(
                'https://images.unsplash.com/photo-1517841905240-472988babdf9',
              ),
            ),
            Positioned(
              top: 136,
              left: -37,
              child: _buildImageCard(
                'https://images.unsplash.com/photo-1524504388940-b1c1722653e1',
              ),
            ),
            Positioned(
              top: 64,
              left: 83,
              child: _buildImageCard(
                'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61',
              ),
            ),
            Positioned(
              top: 120,
              left: 323,
              child: _buildImageCard(
                'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79',
              ),
            ),
            Positioned(
              top: 220,
              left: 83,
              child: _buildImageCard(
                'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d',
              ),
            ),
            Positioned(
              top: 170,
              left: 203,
              child: _buildImageCard(
                'https://images.unsplash.com/photo-1517841905240-472988babdf9',
              ),
            ),
            Positioned(
              top: 276,
              left: 323,
              child: _buildImageCard(
                'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6',
              ),
            ),

            // Kalp ikonu
            const Positioned(
              top: 80,
              left: 241.58,
              child: Icon(Icons.favorite, color: Colors.white, size: 35),
            ),

            // Alt kısımdaki içerik
            Positioned(
              left: 16,
              right: 16,
              bottom: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Find your\npartner in life',
                    style: TextStyle(
                      fontSize: 40,
                      height: 1.2,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'We created to bring together amazing singles who want to find love, laughter and happily ever after!',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SettingsScreen(),
                            ),
                          );
                        },
                        borderRadius: BorderRadius.circular(13),
                        child: const Center(
                          child: Text(
                            'Join now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        text: 'Already have account? ',
                        style: TextStyle(color: Colors.white70),
                        children: [
                          TextSpan(
                            text: 'Log in',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageCard(String imageUrl) {
    return Container(
      width: 112,
      height: 148,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white, width: 2),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0D8973).withOpacity(0.22),
            blurRadius: 22,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(imageUrl, fit: BoxFit.cover),
      ),
    );
  }
}
