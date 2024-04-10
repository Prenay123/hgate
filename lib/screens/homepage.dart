import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hgate/screens/noticeboard.dart';
import 'package:hgate/screens/notifications.dart';
import 'package:hgate/screens/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    // Add your pages here
    const NoticeboardScreen(),
    const SettingsPage(),
    const NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        buttonBackgroundColor: Color.fromARGB(255, 31, 95, 115),
        color: Color.fromARGB(255, 31, 95, 115),
        items: const <Widget>[
          Icon(Icons.wysiwyg, size: 30),
          Icon(Icons.settings, size: 30),
          Icon(Icons.notifications, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          // Navigate to the selected page using Navigator
          switch (index) {
            case 0:
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const NoticeboardScreen()),
              // );
              break;
            case 1:
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const SettingsPage()),
              // );
              break;
            case 2:
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const NotificationPage()),
              // );
              break;
          }
        },
      ),
    );
  }
}
