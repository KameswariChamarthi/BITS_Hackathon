import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency Contacts'),
        backgroundColor: const Color.fromARGB(255, 2, 16, 62),
      ),
      body: const Center(
        child: Text(
          'Emergency Contacts: 9XXXXXXXX, 9XXXXXXXX',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
