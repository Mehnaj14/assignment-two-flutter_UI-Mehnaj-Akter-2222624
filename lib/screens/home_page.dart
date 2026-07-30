import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              _buildBalanceCard(),
              const SizedBox(height: 20),
              _buildQuickActions(),
              const SizedBox(height: 24),
              _buildTransactionHeader(),
              const SizedBox(height: 12),
              _buildTransactionList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 22,
          backgroundColor: Color(0xFF5B4CF0),
          child: Text(
            'M',
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
                'Welcome back,',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
              Text(
                'MEHNAJ AKTER',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
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

  Widget _buildBalanceCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF5B4CF0),
            Color(0xFF6C5CE7),
          ],
        ),
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Balance',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '\$8,945.32',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Savings: \$5,500',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
              Text(
                'Last 30 days: +\$300',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _actionButton(Icons.swap_horiz, 'Transfer'),
        _actionButton(Icons.receipt_long, 'Pay Bills'),
        _actionButton(Icons.link, 'Invest'),
      ],
    );
  }

  Widget _actionButton(IconData icon, String label) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xFFEAE7FF),
              child: Icon(
                icon,
                color: const Color(0xFF5B4CF0),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Recent Transactions',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('View All'),
        ),
      ],
    );
  }

  Widget _buildTransactionList() {
    final transactions = [
      {
        'title': 'Netflix Subscription',
        'subtitle': 'Entertainment · Today',
        'amount': '\$19.99',
        'icon': Icons.movie,
        'income': false,
      },
      {
        'title': 'Coffee Shop',
        'subtitle': 'Food & Drink · Today',
        'amount': '\$4.50',
        'icon': Icons.coffee,
        'income': false,
      },
      {
        'title': 'Salary Deposit',
        'subtitle': 'Income · Yesterday',
        'amount': '+\$3500.00',
        'icon': Icons.account_balance_wallet,
        'income': true,
      },
      {
        'title': 'Grocery Store',
        'subtitle': 'Shopping · Yesterday',
        'amount': '\$55.80',
        'icon': Icons.shopping_cart,
        'income': false,
      },
      {
        'title': 'Amazon Purchase',
        'subtitle': 'Shopping · 2 days ago',
        'amount': '\$120.45',
        'icon': Icons.shopping_bag,
        'income': false,
      },
    ];

    return Column(
      children: transactions.map((transaction) {
        final isIncome = transaction['income'] as bool;

        return Card(
          margin: const EdgeInsets.only(bottom: 10),
          elevation: 0,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color(0xFFF0F0F5),
              child: Icon(
                transaction['icon'] as IconData,
                color: Colors.grey.shade700,
              ),
            ),
            title: Text(
              transaction['title'] as String,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              transaction['subtitle'] as String,
            ),
            trailing: Text(
              transaction['amount'] as String,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isIncome ? Colors.green : Colors.red,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
