import 'package:flutter/material.dart';

class SlideDemo extends StatefulWidget {
  const SlideDemo({super.key});

  @override
  State<SlideDemo> createState() => _SlideDemoState();
}

class _SlideDemoState extends State<SlideDemo> {
  double _slideItemA = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SlideDemo'),
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
                Slider(
                    value: _slideItemA,
                    activeColor: Theme.of(context).primaryColor,
                    inactiveColor: Colors.teal[50],
                    min: 0.0,
                    max: 10.0,
                    divisions: 10,
                    label: '${_slideItemA.toInt()}',
                    onChanged: (value) {
                      setState(() {
                        _slideItemA = value;
                      });
                    })
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('SlideValue: $_slideItemA')
          ],
        ),
      ),
    );
  }
}
