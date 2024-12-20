import 'dart:io';

import 'package:dart_rockpaperscissors_game/input.dart';
import 'package:path/path.dart' as p;

void main() {
  String filePath = getFilePath('bin', 'sample_input_01.txt');

  List<List<int>> points = readPointsFromFile(filePath);

  Map<int, int> pointFrequency = createPointFrequencyTable(points);

  int similarityScore = calculateSimilarityScore(pointFrequency, points);
  print(similarityScore);
}

List<List<int>> readPointsFromFile(String filePath) {
  File file = File(filePath);
  String content = file.readAsStringSync();
  List<String> lines = content.split('\n');

  List<List<int>> points = [];

  for (final line in lines) {
    List<int> point = line.split('  ').map((e) => int.parse(e)).toList();
    points.add(point);
  }
  return points;
}

Map<int, int> createPointFrequencyTable(List<List<int>> points) {
  Map<int, int> hashTable = {};
  for (final point in points) {
    int key = point[1];
    hashTable[key] = (hashTable[key] ?? 0) + 1;
  }

  return hashTable;
}

int calculateSimilarityScore(Map<int, int> hashTable, List<List<int>> points) {
  int totalScore = 0;
  for (final point in points) {
    int left = point[0];

    if (hashTable.containsKey(left)) {
      totalScore += left * hashTable[left]!;
    }
  }
  return totalScore;
}
