import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MyApp());
}

class _HomeScreenState extends State<HomeScreen> {
  String _locationMessage = '';

  // Function to get current location
  Future<void> _getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _locationMessage = 'Latitude: ${position.latitude}, Longitude: ${position.longitude}';
    });
  }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Disaster Relief & Health Support'),
    ),
    body: Container(
      color: const Color.fromARGB(255, 3, 76, 109),  // Set background color here
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Location:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              _locationMessage,
              style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 16, 197, 61)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _getCurrentLocation,
              child: Text('Report Location'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder for requesting aid
              },
              child: Text('Request Aid'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder for health info access
              },
              child: Text('Access Health Info'),
            ),
          ],
        ),
      ),
    ),
  );
}

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Disaster Relief & Health Support',
//       theme: ThemeData(
//         primarySwatch: Colors.teal,
//       ),
//       home: const HomeScreen(),
//     );
//   }
// }
