import 'dart:io';
import 'package:path/path.dart' as p;

String getFilePath(String directory, String fileName) {
  return p.join(Directory.current.path, directory, fileName);
}

List<List<int>> readPointsFromFile(String filePath, String splitBy) {
  File file = File(filePath);
  String content = file.readAsStringSync();
  List<String> lines = content.split('\n');

  List<List<int>> points = [];

  for (final line in lines) {
    List<int> point = line.split(splitBy).map((e) => int.parse(e)).toList();
    points.add(point);
  }
  return points;
}
