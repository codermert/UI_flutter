import 'package:flutter/material.dart';
import 'searching_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Üst bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.chevron_left, size: 24),
                  ),
                  const Text(
                    'Skip',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),

            // Progress bar
            Container(
              margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
              height: 2,
              decoration: BoxDecoration(
                color: const Color(0xFFE0F1EC),
                borderRadius: BorderRadius.circular(1),
              ),
              child: Row(
                children: [
                  Container(
                    width: 215.73,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF22D297), Color(0xFF0D8973)],
                      ),
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                ],
              ),
            ),

            // Başlık
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 24, 16, 32),
              child: Text(
                'What are you looking for?',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),

            // Seçenekler Grid'i
            Expanded(
              child: Stack(
                children: [
                  // Long term relationship
                  Positioned(
                    left: 7.29,
                    top: 24,
                    child: _buildCircle(
                      size: 132,
                      text: 'Long term\nrelationship',
                      isSelected: true,
                    ),
                  ),

                  // Vacation
                  Positioned(
                    left: 140.29,
                    top: 19,
                    child: _buildCircle(
                      size: 92,
                      text: 'Vacation',
                      isSelected: false,
                    ),
                  ),

                  // Romance
                  Positioned(
                    left: 242.29,
                    top: 0.17,
                    child: _buildCircle(
                      size: 104,
                      text: 'Romance',
                      isSelected: true,
                    ),
                  ),

                  // Start a family
                  Positioned(
                    left: 90.41,
                    top: 132,
                    child: _buildCircle(
                      size: 135,
                      text: 'Start a\nfamily',
                      isSelected: true,
                    ),
                  ),

                  // Secret meetings
                  Positioned(
                    left: 3.02,
                    top: 163,
                    child: _buildCircle(
                      size: 86,
                      text: 'Secret\nmeetings',
                      isSelected: false,
                    ),
                  ),

                  // Friends first
                  Positioned(
                    left: 222,
                    top: 198.5,
                    child: _buildCircle(
                      size: 87,
                      text: 'Friends\nfirst',
                      isSelected: false,
                    ),
                  ),

                  // Active partner
                  Positioned(
                    left: 6.79,
                    top: 252.71,
                    child: _buildCircle(
                      size: 134,
                      text: 'Active\npartner',
                      isSelected: true,
                    ),
                  ),

                  // Casual dating
                  Positioned(
                    left: 143,
                    top: 267,
                    child: _buildCircle(
                      size: 101,
                      text: 'Casual\ndating',
                      isSelected: false,
                    ),
                  ),

                  // BDSM
                  Positioned(
                    left: 16,
                    top: 391.47,
                    child: _buildCircle(
                      size: 67.19,
                      text: 'BDSM',
                      isSelected: false,
                    ),
                  ),

                  // Experiments
                  Positioned(
                    left: 90.41,
                    top: 373.5,
                    child: _buildCircle(
                      size: 95,
                      text: 'Experiments',
                      isSelected: false,
                    ),
                  ),
                ],
              ),
            ),

            // Continue butonu
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xFF2AAC7A),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchingScreen(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(13),
                    child: const Center(
                      child: Text(
                        'Continue',
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircle({
    required double size,
    required String text,
    required bool isSelected,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? const Color(0xFF2AAC7A) : const Color(0xFFEBEBEB),
        boxShadow:
            isSelected
                ? [
                  BoxShadow(
                    color: const Color(0xFF0D6950).withOpacity(0.1),
                    blurRadius: 22,
                    offset: const Offset(0, 8),
                  ),
                ]
                : null,
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 14,
            height: 1.2,
          ),
        ),
      ),
    );
  }
}
