import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapScreen extends StatefulWidget {
  static const String id = 'MapScreen';
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  late Position currentLocation;
  late GoogleMapController mapController;

  LatLng _center = const LatLng(6.576421, 3.365344);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    getUserLocation();
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }
  Future<Position> locateUser() async {
    return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  getUserLocation() async {
    currentLocation = await locateUser();
    setState(() {
      _center = LatLng(currentLocation.latitude, currentLocation.longitude);
    });
  }
  static const CameraPosition _kScience = CameraPosition(
    target: LatLng(6.515139742409136, 3.3994338370057435),
    zoom: 14.4746,
  );static const CameraPosition _kEng = CameraPosition(
    target: LatLng(6.518194450387799, 3.400333930294531),
    zoom: 14.4746,
  );static const CameraPosition _kDli = CameraPosition(
    target: LatLng(6.513042885387248, 3.3909188406805515),
    zoom: 14.4746,
  );static const CameraPosition _kEnv = CameraPosition(
    target: LatLng(6.518256718552721, 3.3872232523307453),
    zoom: 14.4746,
  );static const CameraPosition _kJaja = CameraPosition(
    target: LatLng(6.515876583126679, 3.397770867583131),
    zoom: 14.4746,
  );static const CameraPosition _kMosque = CameraPosition(
    target: LatLng(6.519086352948317, 3.390637821070054),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }


  Map<String,Marker> _markers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: GoogleMap(
      myLocationEnabled: true,
      zoomGesturesEnabled: true,
      compassEnabled: true,
      mapType: MapType.normal,
      initialCameraPosition: _kScience,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
        addMarker('test', currentLocation as LatLng);
      },
    ),
    floatingActionButton: FloatingActionButton.extended(
      onPressed: _goToTheLake,
      label: const Text('To the lake!'),
      icon: const Icon(Icons.directions_boat),
    ),
    );
  }

  addMarker(String id, LatLng location) {
    var marker = Marker(
        markerId: MarkerId(id),
    position: location,
    infoWindow: const InfoWindow(

    ));
    _markers[id] = marker;
    setState(() {

    });
  }
  }
