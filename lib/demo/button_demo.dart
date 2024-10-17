import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget _textButtonDemo = ButtonBar(
      children: <Widget>[
        TextButton(
          onPressed: () {
            print(1);
          },
          child: Text('Button'),
          style: TextButton.styleFrom(
            primary: Colors.blueAccent,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        TextButton.icon(
            icon: Icon(Icons.add),
            onPressed: () {
              print(1);
            },
            label: Text('TextButtonIcon'),
            style: TextButton.styleFrom(
              primary: Colors.blueAccent,
            )),
      ],
    );
    final Widget _elevatedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            print(1);
          },
          child: Text('ElevatedButton'),
          style: TextButton.styleFrom(
            primary: Colors.blueAccent,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        ElevatedButton.icon(
          icon: Icon(Icons.add),
          onPressed: () {
            print(1);
          },
          label: Text('ElevatedBtnIcon'),
          style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(10),
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).primaryColor),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
      ],
    );
    final Widget _outlinedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlinedButton(
          onPressed: () {},
          child: Text('OutlinedButton'),
          style: TextButton.styleFrom(
            primary: Colors.blueAccent,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        OutlinedButton.icon(
          icon: Icon(Icons.add),
          onPressed: () {},
          label: Text('OutlinedBtnIcon'),
          style: ButtonStyle(
            side: MaterialStateProperty.all(
                BorderSide(color: Color.fromARGB(255, 75, 218, 236), width: 4)),
            elevation: MaterialStateProperty.all<double>(10),
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 127, 228, 130)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
      ],
    );
    final Widget _fixedButtonDemo = Container(
      width: 160,
      child: OutlinedButton(
        onPressed: () {},
        child: Text('OutlinedButton'),
        style: TextButton.styleFrom(
          primary: Colors.blueAccent,
        ),
      ),
    );
    final Widget _expendedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Text('OutlinedButton'),
            style: TextButton.styleFrom(
              primary: Colors.blueAccent,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: OutlinedButton(
            onPressed: () {},
            child: Text('OutlinedButton'),
            style: TextButton.styleFrom(
              primary: Colors.blueAccent,
            ),
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _expendedButtonDemo,
            _fixedButtonDemo,
            _textButtonDemo,
            _elevatedButtonDemo,
            _outlinedButtonDemo
          ],
        ),
      ),
    );
  }
}
