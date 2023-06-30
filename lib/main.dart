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
  late GoogleMapController googleMapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Maps"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          googleMapController.animateCamera(CameraUpdate.newCameraPosition(
              const CameraPosition(
                zoom: 16,
                  target: LatLng(24.18179538746738, 88.9523942253065))));
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: GoogleMap(
        //my location button show
        myLocationButtonEnabled: true,
        //my location show
        myLocationEnabled: true,
        onMapCreated: (GoogleMapController? controller) {
          googleMapController = controller!;
        },
        initialCameraPosition: const CameraPosition(
            zoom: 15, target: LatLng(23.807271995338258, 90.37595129339762)),
      ),
    );
  }
}
