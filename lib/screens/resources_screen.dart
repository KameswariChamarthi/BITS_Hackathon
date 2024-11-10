import 'package:flutter/material.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Support Resources'),
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: Text(
          'Health Support Resources Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}