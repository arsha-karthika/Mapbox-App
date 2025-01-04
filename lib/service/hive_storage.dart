import 'package:hive/hive.dart';
import '../model/search_history.dart';

class HiveStorageService {
  final Box<SearchHistory> _box = Hive.box('search_history');

  void saveSearch(String start, String end) {
    _box.add(SearchHistory(startLocation: start, endLocation: end));
  }

  List<SearchHistory> getSearches() {
    return _box.values.toList();
  }
}
