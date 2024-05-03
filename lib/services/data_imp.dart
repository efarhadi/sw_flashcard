import 'package:flutter/services.dart';
import 'dart:convert';

List _items = [];

// Fetch content from the json file
Future<void> readJson() async {
  final String response = await rootBundle.loadString('assets/words.json');
  final data = await json.decode(response);

  _items = data["items"];
}
