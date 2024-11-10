import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report a Disaster'),
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: Text(
          'Report Disaster Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
