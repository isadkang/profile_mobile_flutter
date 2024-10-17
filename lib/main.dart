import 'package:flutter/material.dart';
import 'package:profile_page/login_screen.dart';
import 'package:profile_page/more_page.dart';
import 'package:profile_page/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/more': (context) => const MorePage(),
      },
    );
  }
}
