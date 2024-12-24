import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

const assetImagePath = 'assets/images/';
const sampleImage = '$assetImagePath/sample-image.jpg';

void main10() {
  runApp(MaterialApp(
      home: SafeArea(
    child: Scaffold(
      appBar: AppBar(title: const Text('Flutter에서 외부 라이브러리 사용하기')),
      body: const Body(),
    ),
  )));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [RandomWords(), InnerAsset()],
    );
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    final wordList = generateWordPairs().take(5).toList();
    final widgets = wordList
        .map(
          (word) => Text(word.asSnakeCase, style: TextStyle(fontSize: 32)),
        )
        .toList();
    return Column(children: widgets);
  }
}

class InnerAsset extends StatelessWidget {
  const InnerAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(sampleImage),
    );
  }
}
