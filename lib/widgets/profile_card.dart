import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Profile Picture
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEMs1vOkviI0o7IZLOWjGyukJaK8JWW24L79PGxi5o-A&s=10',
              ),
            ),
            const SizedBox(height: 16),

            // Name & Subtitle
            const Text(
              'John Doe',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3748),
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF718096),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),

            // Bio
            const Text(
              'Passionate about creating user-friendly and engaing digital experiences.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF4A5568),
                height: 1.4,
              ),
            ),
            const SizedBox(height: 16),
            const Divider(color: Color(0xFFE2E8F0), thickness: 1),
            const SizedBox(height: 12),

            // Email
            const Row(
              children: [
                Icon(Icons.email_outlined, size: 18, color: Color(0xFF4A5568)),
                SizedBox(width: 12),
                Text(
                  'john.doe@example.com',
                  style: TextStyle(fontSize: 13, color: Color(0xFF4A5568)),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Phone
            const Row(
              children: [
                Icon(Icons.phone_outlined, size: 18, color: Color(0xFF4A5568)),
                SizedBox(width: 12),
                Text(
                  '+123 456 7890',
                  style: TextStyle(fontSize: 13, color: Color(0xFF4A5568)),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0066FF),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'Follow',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF2D3748),
                      side: const BorderSide(color: Color(0xFFCBD5E0)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'Message',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}