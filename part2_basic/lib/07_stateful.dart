import 'package:flutter/material.dart';

void main07() {
  runApp(MaterialApp(
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text('Stateless vs Stateful'),
              ),
              body: Body()))));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [ExampleStateless(), ExampleStateful(index: 3)]);
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(color: Colors.red));
  }
}

class ExampleStateful extends StatefulWidget {
  final int index;

  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

// 모든 변수는 상태변수 객체에 넣어줘야 한다
class _ExampleStatefulState extends State<ExampleStateful> {
  late int _index;
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    _index = widget.index;
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (_index == 5) {
              _index = 0;
              return;
            }
            _index++;
          });
        },
        child: Container(
          color: Colors.blue.withValues(alpha: 0.1 * _index),
          child: Center(child: Text('$_index')),
        ),
      ),
    );
  }
}
