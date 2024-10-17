import 'package:flutter/material.dart';

class PopupMenuDemo extends StatefulWidget {
  const PopupMenuDemo({super.key});

  @override
  State<PopupMenuDemo> createState() => _PopupMenuDemoState();
}

class _PopupMenuDemoState extends State<PopupMenuDemo> {
  String _currentMenuItem = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentMenuItem),
                PopupMenuButton(
                    onSelected: (value) {
                      setState(() {
                        _currentMenuItem = value;
                      });
                    },
                    itemBuilder: (BuildContext context) => [
                          PopupMenuItem(
                            child: Text('Home'),
                            value: 'Home',
                          ),
                          PopupMenuItem(
                            child: Text('About'),
                            value: 'About',
                          ),
                          PopupMenuItem(
                            child: Text('More'),
                            value: 'More',
                          ),
                        ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
