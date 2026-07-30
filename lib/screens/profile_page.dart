import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              const Text(
                "User Profile",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 22),

              const CircleAvatar(
                radius: 38,
                backgroundColor: Color(0xFF5B4CF0),
                child: Text(
                  "M",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "MEHNAJ AKTER",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),
              const SizedBox(height: 25),

              _infoCard(
                Icons.person_outline,
                "Name",
                "MEHNAJ AKTER",
              ),

              const SizedBox(height: 15),

              _infoCard(
                Icons.badge_outlined,
                "Student ID",
                "2222624",
              ),

              const SizedBox(height: 15),

              _infoCard(
                Icons.email_outlined,
                "Email",
                "2222624@iub.edu.bd",
              ),

              const SizedBox(height: 20),

              _bioCard(),
            ],
          ),
        ),
      ),
    );
  }
}
Widget _infoCard(
    IconData icon,
    String title,
    String value,
    ) {
  return Container(
    margin: const EdgeInsets.only(bottom: 14),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 8,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: const Color(0xFFEAE7FF),
          child: Icon(
            icon,
            color: const Color(0xFF5B4CF0),
          ),
        ),

        const SizedBox(width: 15),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget _bioCard() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 8,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.info_outline,
              color: Color(0xFF5B4CF0),
            ),
            SizedBox(width: 8),
            Text(
              "About",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        Text(
          "I'm currently learning Flutter and building modern mobile applications. I enjoy creating clean UI designs and improving my programming skills every day.",
          style: TextStyle(
            fontSize: 14,
            height: 1.5,
            color: Colors.black87,
          ),
        ),
      ],
    ),
  );
}
