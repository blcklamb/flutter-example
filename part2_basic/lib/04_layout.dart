import 'package:flutter/material.dart';

void main04() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('Study to Layout4'),
        ),
        body: Row(children: [Body(), InnerScrollBody()])),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.red,
            width: 200,
            height: 300,
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.blue,
            width: 200,
            height: 300,
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.green,
            width: 200,
            height: 300,
          ),
        ),
        Flexible(
          flex: 4,
          child: Container(
            color: Colors.yellow,
            width: 200,
            height: 300,
          ),
        )
      ],
    );
  }
}

class InnerScrollBody extends StatelessWidget {
  const InnerScrollBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 100,
            height: 100,
            color: Colors.red,
            margin: const EdgeInsets.symmetric(vertical: 8)),
        Expanded(
            child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          width: 50,
                          height: 50,
                          color: Colors.blue,
                          margin: const EdgeInsets.symmetric(vertical: 8)),
                      Container(
                          width: 50,
                          height: 50,
                          color: Colors.blue,
                          margin: const EdgeInsets.symmetric(vertical: 8)),
                      Container(
                          width: 50,
                          height: 50,
                          color: Colors.blue,
                          margin: const EdgeInsets.symmetric(vertical: 8)),
                      Container(
                          width: 50,
                          height: 50,
                          color: Colors.blue,
                          margin: const EdgeInsets.symmetric(vertical: 8))
                    ],
                  ),
                ))),
        Container(
            width: 100,
            height: 100,
            color: Colors.red,
            margin: const EdgeInsets.symmetric(vertical: 8)),
        Container(
            width: 100,
            height: 100,
            color: Colors.red,
            margin: const EdgeInsets.symmetric(vertical: 8))
      ],
    );
  }
}
