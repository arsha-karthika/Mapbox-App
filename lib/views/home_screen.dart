import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import '../controllers/map_controller.dart';

class HomeScreen extends StatelessWidget {
  final MapController controller = Get.put(MapController());
  late MapboxMapController mapController;
  @override
  Widget build(BuildContext context) {
    // final String accessToken = const String.fromEnvironment("MAPBOX_ACCESS_TOKEN");

    return Scaffold(
      appBar: AppBar(title: const Text('Route Finder')),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(labelText: 'Start Location'),
              onChanged: (val) => controller.startLocation.value = val,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(labelText: 'End Location'),
              onChanged: (val) => controller.endLocation.value = val,
            ),
          ),

          Container(
            height: 300,
            child: Obx(() {
              return MapboxMap(
                 accessToken:  "pk.eyJ1IjoiYWtoaWxsZXZha3VtYXIiLCJhIjoiY2x4MDcwYzZ4MGl2aTJqcmFxbXZzc3lndiJ9.9sxfvrADlA25b1CHX2VuDA",
                onMapCreated: (MapboxMapController controller) {

                },
                initialCameraPosition: const CameraPosition(
                  target: LatLng(37.7749, -122.4194), // Default to a location (e.g., San Francisco)
                  zoom: 12,
                ),
              );
            }),
          ),

          ElevatedButton(
            onPressed: () => Get.toNamed('/results'),
            child: const Text('Navigate'),
          ),
          ElevatedButton(
            onPressed: () => Get.toNamed('/history'),
            child: const Text('Saved Searches'),
          ),
        ],
      ),
    );
  }
}
