import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 8), // Reduced space between cards
          _buildSettingsCard(
            title: 'Account Settings',
            icon: Icons.account_circle,
            onTap: () {
              // Handle tap on Account Settings card
              // Navigate to the account settings page
            },
          ),
          const SizedBox(height: 8), // Reduced space between cards
          _buildSettingsCard(
            title: 'Notification Preferences',
            icon: Icons.notifications,
            onTap: () {
              // Handle tap on Notification Preferences card
              // Navigate to the notification preferences page
            },
          ),
          const SizedBox(height: 8), // Reduced space between cards
          _buildSettingsCard(
            title: 'Daily Helpers',
            icon: Icons.help,
            onTap: () {
              // Handle tap on Daily Helpers card
              // Perform actions related to daily helpers
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsCard({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 40,
                color: Colors.blue,
              ),
              const SizedBox(width: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
