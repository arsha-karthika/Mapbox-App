import 'package:flutter/material.dart';

import 'package:hive/hive.dart';
part 'search_history.g.dart';


@HiveType(typeId: 0)
class SearchHistory extends HiveObject {
  @HiveField(0)
  final String startLocation;

  @HiveField(1)
  final String endLocation;

  SearchHistory({required this.startLocation, required this.endLocation});
}
