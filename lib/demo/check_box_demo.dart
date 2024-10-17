import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({super.key});

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checkboxItemA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
                value: _checkboxItemA,
                title: Text('Checkbox Item A'),
                subtitle: Text('Discription'),
                secondary: Icon(Icons.bookmark),
                selected: _checkboxItemA,
                onChanged: (value) {
                  setState(() {
                    _checkboxItemA = value!;
                  });
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Checkbox(
                //     value: _checkboxItemA,
                //     onChanged: (value) {
                //       setState(() {
                //         _checkboxItemA = value!;
                //       });
                //     }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
