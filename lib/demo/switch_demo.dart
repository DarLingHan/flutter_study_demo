import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _swithItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('RadioGroupValue: $_swithItemA'),
            SizedBox(
              height: 32,
            ),
            SwitchListTile(
                value: _swithItemA,
                title: Text('Swith Item A'),
                subtitle: Text('Description'),
                secondary:
                    Icon(_swithItemA ? Icons.visibility : Icons.visibility_off),
                selected: _swithItemA,
                onChanged: (value) {
                  setState(() {
                    _swithItemA = value;
                  });
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text(
                //   _swithItemA ? '😊' : '😭',
                //   style: TextStyle(fontSize: 32),
                // ),
                // Switch(
                //     value: _swithItemA,
                //     onChanged: (value) {
                //       setState(() {
                //         _swithItemA = value;
                //       });
                //     })
              ],
            )
          ],
        ),
      ),
    );
  }
}
