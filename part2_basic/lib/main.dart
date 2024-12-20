import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Study to Layout'),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        VerticalBody(),
        HorizontalBody(),
        VerticalScrollBody(),
        MoreBody()
      ])),
    ),
  ));
}

class VerticalBody extends StatelessWidget {
  const VerticalBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 100,
              height: 80,
              color: Colors.red,
              child: Text('container 1')),
          Container(
              width: 100,
              height: 80,
              color: Colors.green,
              child: Text('container 2')),
          Container(
              width: 100,
              height: 80,
              color: Colors.blue,
              child: Text('container 3'))
        ],
      ),
    );
  }
}

class HorizontalBody extends StatelessWidget {
  const HorizontalBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        color: Colors.blueGrey,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 100,
              height: 80,
              color: Colors.red,
              child: Text('container 1')),
          Container(
              width: 100,
              height: 80,
              color: Colors.green,
              child: Text('container 2')),
          Container(
              width: 100,
              height: 80,
              color: Colors.blue,
              child: Text('container 3'))
        ]));
  }
}

class VerticalScrollBody extends StatelessWidget {
  const VerticalScrollBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: Colors.greenAccent,
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(
                width: 100,
                height: 80,
                color: Colors.red,
                child: Text('container 1')),
            Container(
                width: 100,
                height: 80,
                color: Colors.green,
                child: Text('container 2')),
            Container(
                width: 100,
                height: 80,
                color: Colors.blue,
                child: Text('container 3')),
            Container(
                width: 100,
                height: 80,
                color: Colors.red,
                child: Text('container 1')),
            Container(
                width: 100,
                height: 80,
                color: Colors.green,
                child: Text('container 2')),
            Container(
                width: 100,
                height: 80,
                color: Colors.blue,
                child: Text('container 3')),
            Container(
                width: 100,
                height: 80,
                color: Colors.red,
                child: Text('container 1')),
            Container(
                width: 100,
                height: 80,
                color: Colors.green,
                child: Text('container 2')),
            Container(
                width: 100,
                height: 80,
                color: Colors.blue,
                child: Text('container 3')),
            Container(
                width: 100,
                height: 80,
                color: Colors.red,
                child: Text('container 1')),
            Container(
                width: 100,
                height: 80,
                color: Colors.green,
                child: Text('container 2')),
            Container(
                width: 100,
                height: 80,
                color: Colors.blue,
                child: Text('container 3'))
          ],
        ),
      ),
    );
  }
}

class MoreBody extends StatelessWidget {
  const MoreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8)),
        Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8)),
        Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8)),
        Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8)),
        Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8)),
        Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8)),
        Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8)),
        Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8)),
        Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8)),
        Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8)),
        Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8)),
      ],
    );
  }
}
