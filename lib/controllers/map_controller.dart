import 'package:get/get.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

import '../service/hive_storage.dart';

class MapController extends GetxController {
  var startLocation = ''.obs;
  var endLocation = ''.obs;
  Rx<LatLng?> startCoords = Rx<LatLng?>(null);
  Rx<LatLng?> endCoords = Rx<LatLng?>(null);

  void updateStartLocation(String location, LatLng coords) {
    startLocation.value = location;
    startCoords.value = coords;
  }

  void updateEndLocation(String location, LatLng coords) {
    endLocation.value = location;
    endCoords.value = coords;
  }

  void saveSearch() {
    HiveStorageService().saveSearch(startLocation.value, endLocation.value);
  }
}
