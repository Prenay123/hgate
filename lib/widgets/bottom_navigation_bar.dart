// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:hgate/screens/noticeboard.dart';
// import 'package:hgate/screens/settings.dart';
// import 'package:hgate/screens/notifications.dart';
// import 'package:hgate/widgets/drawer_menu.dart';
// import 'package:hgate/widgets/bottom_navigation_bar.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // Your existing code
  
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.notifications),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => const NotificationPage()),
//               );
//             },
//           ),
//         ],
//       ),
//       drawer: const DrawerMenu(),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Your existing body content
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//             // Handle navigation to different pages based on index
//             switch (index) {
//               case 0:
//                 // Navigate to home page
//                 break;
//               case 1:
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const SettingsPage()),
//                 );
//                 break;
//             }
//           });
//         },
//       ),
//     );
//   }
// }
