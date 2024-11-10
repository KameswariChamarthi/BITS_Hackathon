import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ReliefApp());
}

class ReliefApp extends StatelessWidget {
  const ReliefApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disaster Relief & Health Support',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
