import 'package:flutter/material.dart';
import 'components/about.dart';

class PlaygroundRouting extends StatelessWidget {
  const PlaygroundRouting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: TextButton(
          child: Text('查看韩玲网介绍'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return About();
            }));
          },
        ),
      ),
    );
  }
}
