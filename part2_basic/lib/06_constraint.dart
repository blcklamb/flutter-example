import 'package:flutter/material.dart';

void main06() {
  runApp(MaterialApp(
      home: SafeArea(
    child: Scaffold(
        appBar: AppBar(
          title: Text('Constraint'),
        ),
        body: SingleChildScrollView(
            child: Column(children: [Body(), TextBody()]))),
  )));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // 제약조건때문에 빨간색이 300이 아니라 500이 됨
    // return Container(
    //   height: 500,
    //   width: 500,
    //   color: Colors.blue,
    //   child: Container(color: Colors.red, height: 300, width: 300),
    // );

    // 해결방법 1: Align으로 감싼다
    // return Container(
    //   height: 500,
    //   width: 500,
    //   color: Colors.blue,
    //   child: Align(
    //       alignment: Alignment.center,
    //       child: Container(color: Colors.red, height: 300, width: 300)),
    // );

    // 해결방법 2: 직접 postion(center) + constraint를 넣는다
    // return Container(
    //   height: 500,
    //   width: 500,
    //   color: Colors.blue,
    //   child: Center(
    //     child: Container(
    //         // constraints: BoxConstraints(
    //         //     minHeight: 300, minWidth: 300, maxHeight: 350, maxWidth: 300),
    //         // tight, loose는 부모 개체가 아니라 자식 개체를 따름
    //         constraints: BoxConstraints.tight(Size(200, 200)),
    //         color: Colors.red,
    //         height: 300,
    //         width: 300),
    //   ),
    // );

    // 해결방법 3: UnconstrainedBox - 잘리지 않고 넘어서지만, overflow 문제 발생
    // return Container(
    //   height: 500,
    //   width: 500,
    //   color: Colors.blue,
    //   child: Center(
    //       child: UnconstrainedBox(
    //           child: Container(width: 300, height: 700, color: Colors.green))),
    // );

    // 해결방법 4: OverflowBox - overflow 문제 발생하지 않고 잘리는 형태
    return Container(
      height: 500,
      width: 500,
      color: Colors.blue,
      child: Center(
        child: OverflowBox(
          child: Container(width: 300, height: 700, color: Colors.green),
        ),
      ),
    );
  }
}

class TextBody extends StatelessWidget {
  const TextBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
              color: Colors.blue,
              child: Text(
                'Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! ',
                style: TextStyle(fontSize: 32),
              )),
        ),
        Flexible(
          child: Container(
            color: Colors.red,
            child: Text(
              'Hello world!',
              style: TextStyle(fontSize: 32),
            ),
          ),
        )
      ],
    );
  }
}
