import 'package:flutter/material.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),

              const SizedBox(height: 20),

              _buildReportCard(),

              const SizedBox(height: 20),

              _buildSpendingBreakdown(),
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
                fontSize: 16,
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

Widget _buildReportCard() {
  return SizedBox(
    height: 210,
    child: Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Monthly Spending Report",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 16),

            Text(
              "Total Expenses (Last 30 days)",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "-\$1270.00",
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "↑ Up 12% from last month",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
Widget _buildSpendingBreakdown() {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 14,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Spending Breakdown",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 14),

          _buildProgress(
            "Food & Drink",
            "\$450.00 (35%)",
            0.35,
            Colors.red,
          ),

          _buildProgress(
            "Shopping",
            "\$320.00 (25%)",
            0.25,
            Colors.blue,
          ),

          _buildProgress(
            "Housing",
            "\$280.00 (22%)",
            0.22,
            Colors.orange,
          ),

          _buildProgress(
            "Transport",
            "\$150.00 (12%)",
            0.12,
            Colors.green,
          ),

          _buildProgress(
            "Other",
            "\$70.00 (6%)",
            0.06,
            Colors.grey,
          ),
        ],
      ),
    ),
  );
}
Widget _buildProgress(
    String title,
    String amount,
    double value,
    Color color,
    ) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              amount,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        const SizedBox(height: 5),

        LinearProgressIndicator(
          value: value,
          minHeight: 6,
          backgroundColor: Colors.grey.shade300,
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ],
    ),
  );
}