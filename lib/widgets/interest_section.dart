import 'package:flutter/material.dart';
import 'interest_card.dart';

class InterestSection extends StatelessWidget {
  const InterestSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Section Header
        const Row(
          children: [
            Expanded(child: Divider(color: Color(0xFFCBD5E0), thickness: 1)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Interests',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3748),
                ),
              ),
            ),
            Expanded(child: Divider(color: Color(0xFFCBD5E0), thickness: 1)),
          ],
        ),
        const SizedBox(height: 16),

        // Two Cards Row
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: InterestCard(
                title: 'Travel',
                description: 'Exploring new places around the world',
                imageUrl:
                'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?q=80&w=400&auto=format&fit=crop',
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: InterestCard(
                title: 'Photography',
                description: 'Capturing moments through the lens',
                imageUrl:
                'https://static.independent.co.uk/2025/05/18/15/MAN_CITY-DE_BRUYNE_97628.jpg',
              ),
            ),
          ],
        ),
      ],
    );
  }
}