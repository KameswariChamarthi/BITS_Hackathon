import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../core/location_service.dart';
import '../core/map_service.dart';
import '../widgets/custom_button.dart';
import '../widgets/report_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _fetchUserLocation() async {
    Position position = await _locationService.getUserLocation();
    setState(() {
      _userCurrentLocation = LatLng(position.latitude, position.longitude);
    });
  }

  late LatLng _userCurrentLocation;
  late GoogleMapController _googleMapController;
  final LocationService _locationService = LocationService();

  @override
  void initState() {
    super.initState();
    _fetchUserLocation();
  }
  // Fetch the user's current location

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disaster Relief & Health Support'),
        actions: [
          IconButton(
            icon: const Icon(Icons.report),
            onPressed: () => showDialog(
              context: context,
              builder: (context) => const ReportDialog(),
            ),
          ),
        ],
      ),
      body: _userCurrentLocation != null
          ? Column(
              children: [
                Expanded(
                  child: GoogleMap(
                    initialCameraPosition: MapService.getInitialCameraPosition(
                        _userCurrentLocation),
                    onMapCreated: (controller) {
                      _googleMapController = controller;
                    },
                    markers: MapService.createUserMarker(_userCurrentLocation),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (context) => const ReportDialog(),
                    ),
                    label: 'Report a Disaster',
                  ),
                ),
              ],
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
