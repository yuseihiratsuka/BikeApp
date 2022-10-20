import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController _controller;
  static const CameraPosition _initialPosition = CameraPosition(
      target: LatLng(34.654279184495486, 135.0028980062489), zoom: 8);

  final Set<Marker> _markers = {
    const Marker(
        markerId: MarkerId('1'),
        position: LatLng(34.654279184495486, 135.0028980062489),
        infoWindow: InfoWindow(title: 'テスト', snippet: 'これはテストです')),
    const Marker(
        markerId: MarkerId('2'),
        position: LatLng(34.66848270366231, 135.43315384165516))
  };

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      markers: _markers,
      initialCameraPosition: _initialPosition,
      onMapCreated: (GoogleMapController controller) {
        _controller = controller;
      },
    );
  }
}
//AIzaSyBpXXUcZ0SM0fPbJecNN35ply2m97MV90o
