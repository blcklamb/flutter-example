import 'dart:io';
import 'package:dart_rockpaperscissors_game/input.dart';
import 'package:path/path.dart' as p;

// AS-IS
// void main() {
//   var filePath = p.join(Directory.current.path, 'bin', 'sample_input.txt');
//   File file = File(filePath);
//   var fileContent = file.readAsStringSync();
//   List<String> pointString = fileContent.split('\n');
//   List<int> firstPointList = [];
//   List<int> secondPointList = [];

//   for (final element in pointString) {
//     List<String> elementSplited = element.split('  ');
//     firstPointList.add(int.parse(elementSplited[0]));
//     secondPointList.add(int.parse(elementSplited[1]));
//   }
//   firstPointList.sort();
//   secondPointList.sort();
//   int answer = 0;
//   for (int i = 0; i < pointString.length; i++) {
//     answer += (firstPointList[i] - secondPointList[i]).abs();
//   }
//   print(answer);
// }

// TO-BE

void main() {
  String filePath = getFilePath('bin', 'sample_input_01.txt');

  List<List<int>> points = readPointsFromFile(filePath);

  int result = calculateTotalDifference(points);

  print(result);
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

int calculateTotalDifference(List<List<int>> points) {
  // .. 는 cascade notation - 객체 자체를 계속 반환하면서 메서드 호출
  List<int> firstPoints = points.map((p) => p[0]).toList()..sort();
  List<int> secondPoints = points.map((p) => p[1]).toList()..sort();

  int totalDifference = 0;
  for (int i = 0; i < points.length; i++) {
    totalDifference += (firstPoints[i] - secondPoints[i]).abs();
  }

  return totalDifference;
}
