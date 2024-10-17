import 'package:flutter/material.dart';
import './button_demo.dart';
import './floating_action_btn_demo.dart';
import './popup_menu_demo.dart';
import './form_demo.dart';
import './check_box_demo.dart';
import './radio_demo.dart';
import './switch_demo.dart';
import './slide_demo.dart';
import './date_time_demo.dart';
import './animation/animation_demo.dart';

class MaterialComponents extends StatelessWidget {
  const MaterialComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('MaterialComponents'),
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 223, 111, 240)),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'AnimationDemo',
            page: AnimationDemo(),
          ),
          ListItem(
            title: 'DateTimeDemo',
            page: DateTimeDemo(),
          ),
          ListItem(
            title: 'SlideDemo',
            page: SlideDemo(),
          ),
          ListItem(
            title: 'SwitchDemo',
            page: SwitchDemo(),
          ),
          ListItem(
            title: 'RadioDemo',
            page: RadioDemo(),
          ),
          ListItem(
            title: 'CheckBoxDemo',
            page: CheckBoxDemo(),
          ),
          ListItem(
            title: 'FormDemo',
            page: FormDemo(),
          ),
          ListItem(
            title: 'PopupMenuDemo',
            page: PopupMenuDemo(),
          ),
          ListItem(
            title: 'Button',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          ),
        ],
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  const _WidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
