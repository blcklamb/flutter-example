import 'package:flutter/material.dart';

void main02() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Study to Container'),
      ),
      body: CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      // color: Colors.red.shade200,
      padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
      margin: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
      decoration: BoxDecoration(
        color: Color(0xff3E5879),
        border: Border.all(
            color: Color(0xff213555), width: 5, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              offset: Offset(6, 5),
              blurRadius: 10,
              spreadRadius: 10)
        ],
      ),

      child: Center(
          child: Container(
        color: Color(0xffD8C4B6),
        child: Text(
            'Hello Container, Hello Container,Hello Container, Hello Container, Hello Container, Hello Container, Hello Container'),
      )),
    );
  }
}
