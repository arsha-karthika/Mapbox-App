import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/hive_storage.dart';

class HistoryScreen extends StatelessWidget {
  final HiveStorageService storage = HiveStorageService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search History')),
      body: ListView(
        children: storage.getSearches().map((search) {
          return ListTile(
            title: Text('${search.startLocation} → ${search.endLocation}'),
            onTap: () {
              Get.toNamed('/results');
            },
          );
        }).toList(),
      ),
    );
  }
}
