import 'dart:convert' as convert;
import 'package:flutter/services.dart' show rootBundle;
import 'package:startenwir_flash_cart/models/word.dart';

Future<List<Word>> loadWords() async {
  // Load JSON file from assets
  String jsonString = await rootBundle.loadString('assets/words.json');

  // Parse JSON
  final jsonData = convert.jsonDecode(jsonString);

  // Convert JSON data to List of Word objects
  List<Word> words = [];
  for (var item in jsonData) {
    words.add(Word.fromJson(item));
  }

  return words;
}
