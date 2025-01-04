import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/map_controller.dart';

class ResultsScreen extends StatelessWidget {
  final MapController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Route Results')),
      body: Column(
        children: [
          Text('Route from ${controller.startLocation} to ${controller.endLocation}'),
          ElevatedButton(
            onPressed: controller.saveSearch,
            child: Text('Save'),
          ),
        ],
      ),
    );
  }
}
