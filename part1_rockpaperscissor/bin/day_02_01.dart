import 'package:dart_rockpaperscissors_game/input.dart';

void main() {
  String filePath = getFilePath('bin', 'sample_input_02.txt');

  List<List<int>> points = readPointsFromFile(filePath, ' ');

  print(points);
}

// fastest unsafe
bool isSafeByCheckingE2E(List<int> row) {
  final rowLength = row.length;
  final gap = (row.first - row.last).abs();
  if (gap < rowLength - 1 || gap > (rowLength - 1) * 3) {
    return false;
  }
  return true;
}

// TODO: 작성 중
bool isSafeByIteration(List<int> row) {
  bool ascending = true;
  if (row[0] > row[1]) {
    ascending = false;
  }
  for (final level in row) {
    return false;
  }
  return true;
}
