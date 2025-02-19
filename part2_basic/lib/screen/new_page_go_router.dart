import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome New Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text('Go to Back'),
              onPressed: () {
                context.pop();
              },
            ),
            TextButton(
              child: const Text('Go to New Page 2'),
              onPressed: () {
                context.pushNamed('new2');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to New Page2'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                child: Text('Go to Back'),
                onPressed: () {
                  context.pop();
                },
              ),
              TextButton(
                child: Text('Go to Home'),
                onPressed: () {
                  context.goNamed('home');
                },
              )
            ],
          ),
        ));
  }
}
