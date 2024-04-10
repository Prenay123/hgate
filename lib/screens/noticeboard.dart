import 'package:flutter/material.dart';

class NoticeboardScreen extends StatelessWidget {
  const NoticeboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notice Board'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.sort),
            onPressed: () {
              // Implement filter functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: ListView(
        children: const <Widget>[
          NoticeCard(
            title: 'Important Announcement',
            date: 'April 6, 2024',
            subject: 'Subject of the notice',
            content: 'Content of the notice...',
          ),
          NoticeCard(
            title: 'Reminder',
            date: 'April 5, 2024',
            subject: 'Subject of the notice',
            content: 'Content of the notice...',
          ),
          NoticeCard(
            title: 'Announcement',
            date: 'April 3, 2024',
            subject: 'Subject of the notice',
            content: 'Content of the notice...',
          ),
          // Add more NoticeCard widgets as needed
        ],
      ),
    );
  }
}

class NoticeCard extends StatelessWidget {
  final String title;
  final String date;
  final String subject;
  final String content;

  const NoticeCard({
    super.key,
    required this.title,
    required this.date,
    required this.subject,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text(
              subject,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              content,
              style: const TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}
