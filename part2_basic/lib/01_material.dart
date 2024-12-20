import 'package:flutter/material.dart';

void main01() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print('tab');
              },
            ),
            Icon(Icons.play_arrow)
          ],
          centerTitle: true,
          title: Text('this is app bar'),
        ),
        body: TestWidget(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.bug_report),
          onPressed: () => {print('bug report!')},
        )),
  ));
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          'Hello, Flutter',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
