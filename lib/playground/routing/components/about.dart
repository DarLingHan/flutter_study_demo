import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('韩玲网, 创立于2024.10.28'),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('返回'))
          ],
        ),
      ),
    );
  }
}
