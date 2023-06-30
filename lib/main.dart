import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyGoogleMap());
}

class MyGoogleMap extends StatelessWidget {
  const MyGoogleMap({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Map(),
    );
  }
}

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Maps"),
      ),
      body: const GoogleMap(
        //my location button show
        myLocationButtonEnabled: true,
        //my location show
        myLocationEnabled: true,
        initialCameraPosition: CameraPosition(
          zoom: 15,
            target: LatLng(23.807271995338258, 90.37595129339762)),
      ),
    );
  }
}
