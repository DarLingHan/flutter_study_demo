import 'package:flutter/material.dart';

class TestDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestDemo'),
        elevation: 0.0,
      ),
      body: TestDemoHome(),
    );
  }
}

class NinghaoTestDemo {
  static greet(String name) {
    return 'hello $name～～～';
  }
}

class TestDemoHome extends StatefulWidget {
  const TestDemoHome({super.key});

  @override
  State<TestDemoHome> createState() => _TestDemoHomeState();
}

class _TestDemoHomeState extends State<TestDemoHome> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Chip(label: Text('hello')),
        ActionChip(
          label: Text('$count'),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        )
      ],
    );
  }
}
