import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
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
  late final CameraPosition currentPosition;
  Future<void> getCurrentPosition() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('取得失敗');
      }
    }
    final Position _currentPosition = await Geolocator.getCurrentPosition();
    currentPosition = CameraPosition(
        target: LatLng(_currentPosition.latitude, _currentPosition.longitude),
        zoom: 16);
  }

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
      onMapCreated: (GoogleMapController controller) async {
        await getCurrentPosition();
        _controller = controller;
        setState(() {
          _markers.add(
            Marker(
                markerId: const MarkerId('3'),
                position: currentPosition.target,
                infoWindow:
                    const InfoWindow(title: '現在地', snippet: 'これは現在地です')),
          );
        });
        _controller
            .animateCamera(CameraUpdate.newCameraPosition(currentPosition));
      },
      myLocationEnabled: true, //現在地のボタン
    );
  }
}
//AIzaSyBpXXUcZ0SM0fPbJecNN35ply2m97MV90o
