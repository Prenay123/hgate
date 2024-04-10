import 'package:flutter/material.dart';
import 'package:hgate/screens/homepage.dart';
// import 'package:hgate/screens/loginPage.dart';
// import 'package:hgate/screens/notifications.dart';
// import 'package:hgate/screens/settings.dart';
// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hgate/screens/settings.dart';


void main() => runApp(const MyApp());

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'settings',
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsPage();
          },
        ),
      ],
    ),
  ],
);

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
