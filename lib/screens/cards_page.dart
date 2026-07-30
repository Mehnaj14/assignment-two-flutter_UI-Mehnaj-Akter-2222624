import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 20),

              const Text(
                "My Cards",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              _buildCard(),
              const SizedBox(height: 20),
              _buildActionButtons(),
              const SizedBox(height: 25),
              const Text(
                "Linked Accounts",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              _buildLinkedAccount(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildHeader() {
  return Row(
    children: [
      const CircleAvatar(
        radius: 22,
        backgroundColor: Color(0xFF5B4CF0),
        child: Text(
          "M",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(width: 12),
      const Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back,",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            Text(
              "MEHNAJ AKTER",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications_none),
      ),
    ],
  );
}
Widget _buildCard() {
  return Container(
    width: double.infinity,
    height: 190,
    padding: const EdgeInsets.all(22),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: const LinearGradient(
        colors: [
          Color(0xFF111827),
          Color(0xFF1F2937),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 12,
          offset: Offset(0, 6),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 38,
              height: 28,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            const Text(
              "BANK",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),

        const Spacer(),

        const Text(
          "4567  ****  ****  1234",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            letterSpacing: 2,
            fontWeight: FontWeight.w500,
          ),
        ),

        const SizedBox(height: 22),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "CARD HOLDER",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 10,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "MEHNAJ AKTER",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "EXPIRES",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 10,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "12/28",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildActionButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      _action(Icons.block, "Block"),
      _action(Icons.description, "Details"),
      _action(Icons.credit_score, "Limit"),
    ],
  );
}
Widget _action(IconData icon, String title) {
  return Column(
    children: [
      CircleAvatar(
        radius: 22,
        backgroundColor: const Color(0xFFEAE7FF),
        child: Icon(
          icon,
          color: const Color(0xFF5B4CF0),
        ),
      ),
      const SizedBox(height: 8),
      Text(
        title,
        style: const TextStyle(
          fontSize: 12,
        ),
      ),
    ],
  );
}

Widget _buildLinkedAccount() {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    child: ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0xFFEAE7FF),
        child: Icon(
          Icons.account_balance_wallet,
          color: Color(0xFF5B4CF0),
        ),
      ),
      title: const Text(
        "Shared Savings",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text("\$5,500.00"),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    ),
  );
}