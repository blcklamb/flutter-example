import 'package:flutter/material.dart';

void main05() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 겹겹이 쌓아 올리기'),
        ),
        body:
            SingleChildScrollView(child: Column(children: [Body(), Body2()]))),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 500,
        height: 500,
        color: Colors.black,
      ),
      Container(
        width: 400,
        height: 400,
        color: Colors.red,
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ),
      ),
      Positioned(
        right: 0,
        bottom: 20,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.green,
        ),
      ),
    ]);
  }
}

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(150))),
        Align(
          alignment: Alignment.center,
          child: Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(140))),
        ),
        Align(
            alignment: Alignment.center,
            child: Text('Count 0',
                style: TextStyle(color: Colors.red, fontSize: 32)))
      ],
    );
  }
}
