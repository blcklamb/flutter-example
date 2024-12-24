import 'package:flutter/material.dart';

void main09() {
  runApp(MaterialApp(
      home: SafeArea(
          child: Scaffold(
    appBar: AppBar(title: Text('Flutter의 Callback')),
    body: Body(),
  ))));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('Count : $value', style: TextStyle(fontSize: 30)),
      TestButton(addCounter, addCounterBy)
    ]);
  }

  void addCounter() => setState(() => ++value);
  void addCounterBy(int addValue) => setState(() => value = value + addValue);
}

class TestButton extends StatelessWidget {
  const TestButton(this.callback, this.callbackWithArgs, {super.key});

  final VoidCallback callback;
  final Function(int) callbackWithArgs;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: double.infinity,
        child: GestureDetector(
          onTap: () => {callbackWithArgs.call(4)},
          onDoubleTap: () => {callback.call()},
          child: Center(
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(border: Border.all()),
            child: Text(
              'Up Counter',
              style: TextStyle(fontSize: 24),
            ),
          )),
        ));
  }
}
