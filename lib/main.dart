import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// My colors
const Color babyPink = Color(0xFFF8C8DC);
const Color babyBlue = Color(0xFFA7D8F0);
const Color darkBlue = Color(0xFF3A6EA5);
const Color lightBackground = Color(0xFFFDF2F7);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackground,
      appBar: AppBar(
        backgroundColor: babyBlue,
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // 1) The big pink card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: babyPink,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: Text(
                      'AA',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: darkBlue,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Aya Khaled Abuoud',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: darkBlue,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Software Engineer',
                    style: TextStyle(fontSize: 18, color: darkBlue),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'LIMU',
                    style: TextStyle(fontSize: 16, color: darkBlue),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // 2) The three small boxes
            Row(
              children: [
                Expanded(child: statBox('4', 'Year')),
                const SizedBox(width: 12),
                Expanded(child: statBox('8', 'Courses')),
                const SizedBox(width: 12),
                Expanded(child: statBox('18', 'Projects')),
              ],
            ),

            const SizedBox(height: 16),

            // 3) About me box
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About me',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '20 | smart and fun',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // One small box (number + label)
  Widget statBox(String number, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: babyBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            number,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: darkBlue,
            ),
          ),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(color: darkBlue)),
        ],
      ),
    );
  }
}
