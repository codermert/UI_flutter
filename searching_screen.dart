import 'package:flutter/material.dart';

class SearchingScreen extends StatelessWidget {
  const SearchingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: SafeArea(
        child: Column(
          children: [
            // Üst bar
            Container(
              height: 42,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Sol taraf - Geri butonu
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.chevron_left,
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  // Orta - Başlık
                  const Text(
                    'Discover',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),

                  // Sağ taraf - Bildirim ikonu
                  Row(
                    children: [
                      CustomPaint(
                        size: const Size(24, 24),
                        painter: NotificationIconPainter(
                          color: const Color(0xFF13121B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Swipe alanı
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 74),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    // Arka kartlar
                    Positioned(
                      top: 73,
                      child: Container(
                        width: 279,
                        height: 422,
                        decoration: BoxDecoration(
                          color: const Color(0xFF2AAC7A).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 63,
                      child: Container(
                        width: 295,
                        height: 422,
                        decoration: BoxDecoration(
                          color: const Color(0xFF2AAC7A).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 19,
                      child: Container(
                        width: 311,
                        height: 456,
                        decoration: BoxDecoration(
                          color: const Color(0xFF2AAC7A).withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    // Ana kart
                    Container(
                      width: 327,
                      height: 465,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://files.catbox.moe/vjl0ei.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.8),
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Jessica Parker, 23',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white70,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Sırbistan • 20 kms away',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFF2AAC7A).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: const Color(0xFF2AAC7A),
                                  width: 0.5,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(
                                        0xFF2AAC7A,
                                      ).withOpacity(0.4),
                                    ),
                                    child: Center(
                                      child: Container(
                                        width: 4,
                                        height: 4,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFF2AAC7A),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    'Active Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Alt butonlar
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildActionButton(
                    icon: Icons.close,
                    color: Colors.red,
                    onTap: () {},
                  ),
                  const SizedBox(width: 24),
                  _buildActionButton(
                    icon: Icons.favorite,
                    color: const Color(0xFF2AAC7A),
                    onTap: () {},
                  ),
                ],
              ),
            ),

            // Bottom navigation bar
            Container(
              height: 82,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 40,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Ana ikonlar
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Home icon - aktif
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: const Color(0xFF2AAC7A),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.home_rounded,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        // Heart icon
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.favorite_rounded,
                            color: const Color(0xFF13121B).withOpacity(0.15),
                            size: 16,
                          ),
                        ),
                        // Chat icon
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.chat_bubble_rounded,
                            color: const Color(0xFF13121B).withOpacity(0.15),
                            size: 16,
                          ),
                        ),
                        // Profile icon
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.person_rounded,
                            color: const Color(0xFF13121B).withOpacity(0.15),
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Yeşil gradient indikatör
                  Positioned(
                    left: 16,
                    bottom: 0,
                    child: Container(
                      width: 71,
                      height: 3,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFF22D297),
                            const Color(0xFF0D8973),
                          ],
                        ),
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

  Widget _buildActionButton({
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 40),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(30),
          child: Icon(icon, color: color),
        ),
      ),
    );
  }
}

class NotificationIconPainter extends CustomPainter {
  final Color color;

  NotificationIconPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.3;

    // Çan şekli
    final path =
        Path()
          ..moveTo(4.61, 2.51)
          ..quadraticBezierTo(7.0, 2.0, 12.0, 2.0)
          ..quadraticBezierTo(17.0, 2.0, 19.38, 2.51)
          ..quadraticBezierTo(20.0, 8.0, 19.38, 17.86)
          ..lineTo(4.61, 17.86)
          ..quadraticBezierTo(4.0, 8.0, 4.61, 2.51);

    // Alt çizgi
    final bottomPath =
        Path()
          ..moveTo(9.69, 20.51)
          ..lineTo(14.31, 20.51);

    canvas.drawPath(path, paint);
    canvas.drawPath(bottomPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
