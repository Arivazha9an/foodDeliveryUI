import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:food_delivery/Api.dart';

import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import 'package:http/http.dart' as http;
// import 'package:user_location/user_location.dart';

class Mapp extends StatefulWidget {
  const Mapp({super.key});

  @override
  State<Mapp> createState() => _MappState();
}

class _MappState extends State<Mapp> {
  late MapController mapController;
  LatLng? userLocation;
  List listOfPoints = [];
  List<LatLng> points = [];
  

  @override
  void initState() {
    super.initState();
    mapController = MapController();
    _getUserLocation();
    
  }

  // getCoordinates() async {
  //   var response = await http
  //       .get(getRouteUrl("1.243344,6.145332",
  //       '1.2160116523406839,6.125231015668568'));

  //   setState(() {
  //     if (response.statusCode == 200) {
  //       var data = jsonDecode(response.body);
  //       listOfPoints = data['features'][0]['geometry']['coordinates'];
  //       points = listOfPoints
  //           .map((p) => LatLng((p[1]).toDouble(), (p[0]).toDouble()))
  //           .toList();
  //     }
  //   });
  // }

  Future<void> _getUserLocation() async {
    final location = Location();

    try {
      final locationData = await location.getLocation();
      setState(() {
        userLocation = LatLng(locationData.latitude!, locationData.longitude!);
      });
    } catch (e) {
      // Handle location errors
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: userLocation ?? const LatLng(0, 0),
        initialZoom: 12,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
       
      
        CurrentLocationLayer(),
        MarkerLayer(
          markers: [
            Marker(
              point: userLocation!,
              child: const Text(''),
            ),
            const Marker(
              point: LatLng(10.379663, 78.820847),
              width: 36,
              height: 36,
              child: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.red,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1597466765990-64ad1c35dafc'),
                ),
              ),
            ),
          ],
        ),
        //   PolylineLayer(
        //   polylines: [
        //     Polyline(
        //       points: points,
        //       color: Colors.blue,
        //       strokeWidth: 4,
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
