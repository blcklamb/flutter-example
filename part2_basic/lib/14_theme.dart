import 'package:flutter/material.dart';

void main14() {
  runApp(MaterialApp(home: HomeWidget(), theme: customTheme));
}

final customTheme = ThemeData(
    useMaterial3: false,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
    textTheme: const TextTheme(
        bodyMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)));

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
    final textTheme = Theme.of(context).textTheme;
    final sameTextTheme = customTheme.textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Theme')),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Press Count',
            style: textTheme.bodyMedium,
          ),
          Text(
            '$count',
            style: textTheme.displayLarge,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          count++;
        });
      }),
    );
  }
}
