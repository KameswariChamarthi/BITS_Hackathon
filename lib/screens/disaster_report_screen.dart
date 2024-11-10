import 'package:flutter/material.dart';
import '../core/disaster_report_service.dart';

class DisasterReportScreen extends StatefulWidget {
  const DisasterReportScreen({Key? key}) : super(key: key);

  @override
  _DisasterReportScreenState createState() => _DisasterReportScreenState();
}

class _DisasterReportScreenState extends State<DisasterReportScreen> {
  final TextEditingController _disasterTypeController = TextEditingController();
  final TextEditingController _reportDetailsController =
      TextEditingController();

  void _submitReport() {
    String disasterType = _disasterTypeController.text;
    String reportDetails = _reportDetailsController.text;
    if (disasterType.isEmpty || reportDetails.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please complete all fields')),
      );
      return;
    }

    DisasterReportService.submitReliefRequest(disasterType, reportDetails);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Report a Disaster'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _disasterTypeController,
            decoration: const InputDecoration(labelText: 'Type of Disaster'),
          ),
          TextField(
            controller: _reportDetailsController,
            decoration: const InputDecoration(labelText: 'Description'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: _submitReport,
          child: const Text('Submit Report'),
        ),
      ],
    );
  }
}
