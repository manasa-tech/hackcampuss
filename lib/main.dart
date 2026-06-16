import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const HackCampus());
}

class HackCampus extends StatelessWidget {
  const HackCampus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HackCampus',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const SplashScreen(),
    );
  }
}
