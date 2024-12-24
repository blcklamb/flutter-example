import 'package:flutter/material.dart';

void main14() {
  runApp(MaterialApp(
    home: HomeWidget(),
    theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
        // colorScheme: ColorScheme.dark(),
        appBarTheme: AppBarTheme(backgroundColor: Colors.amberAccent)),
  ));
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int count;

  @override
  void initState() {
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Theme')),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [const Text('Press Count'), Text('$count')],
      )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          count++;
        });
      }),
    );
  }
}
