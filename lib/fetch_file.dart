import 'package:flutter/services.dart';

Future<String> fetchFileFromAssets(String assetsPath) async {
  try {
    return await rootBundle.loadString('assets/$assetsPath.txt');
  } catch (e) {
    return 'Файл не найден';
  }
}
