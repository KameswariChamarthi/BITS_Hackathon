import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapService {
  static CameraPosition getInitialCameraPosition(LatLng userLocation) {
    return CameraPosition(
      target: userLocation,
      zoom: 12,
    );
  }

  static Set<Marker> createUserMarker(LatLng userLocation) {
    return {
      Marker(
        markerId: const MarkerId('userMarker'),
        position: userLocation,
        infoWindow: const InfoWindow(title: 'Your Current Location'),
      ),
    };
  }
}
