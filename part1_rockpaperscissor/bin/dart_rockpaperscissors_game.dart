import 'dart:convert';
import 'dart:io';
import 'dart:math';

const VALID_CHOICES = ['가위', '바위', '보'];

void main() {
  print('가위 바위 보를 시작합니다!');

  String userChoice = getUserChoice();

  String computerChoice = getComputerChoice();

  String? winner = determineWinner(userChoice, computerChoice);

  print('결과: 사용자-[$userChoice], 컴퓨터-[$computerChoice]');
  if (winner == null) {
    print('비겼습니다');
  } else {
    print('우승자는 $winner입니다!');
  }
}

String getUserChoice() {
  String? userInput;

  while (true) {
    print('가위, 바위, 보 중 하나를 입력하세요: ');
    userInput = stdin.readLineSync(encoding: utf8);

    if (VALID_CHOICES.contains(userInput)) {
      return userInput!;
    } else {
      print('가위, 바위, 보 중에서 입력해 주세요.');
    }
  }
}

String getComputerChoice() {
  return VALID_CHOICES[Random().nextInt(3)];
}

String? determineWinner(String userChoice, String computerChoice) {
  const winningCombinations = {'가위': '보', '바위': '가위', '보': '바위'};

  if (userChoice == computerChoice) {
    return null;
  } else if (winningCombinations[userChoice] == computerChoice) {
    return '사용자';
  } else {
    return '컴퓨터';
  }
}
