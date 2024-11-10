class DisasterReportService {
  static Future<void> submitReliefRequest(
      String disasterType, String reportDetails) async {
    // In a production app, this data would be sent to a backend server
    print('Disaster Report Submitted: $disasterType - $reportDetails');
  }
}
