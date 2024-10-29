import 'package:flutter/material.dart';
import 'package:flutter_application_3/playground/routing/components/about.dart';
import '../../demo/drawer_demo.dart';
import '../../demo/bottom_navigation_bar_demo.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  final List<Widget> _pages = [
    Center(child: About()),
    Center(child: Text('Search Page')),
    Center(child: Text('Profile Page')),
    Center(child: About()),
  ];
  String _messageFromChild = "No message yet";

  void _handleMessageFromChild(String message) {
    print(111);
    setState(() {
      _messageFromChild = message;
      print(_messageFromChild);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   tooltip: 'Navifation',
            //   onPressed: () => debugPrint('激活'),
            // ),
            title: const Text('你好Han Ling'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('搜索'),
              )
            ],
            elevation: 30,
            bottom: const TabBar(
              unselectedLabelColor: Colors.black38,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: IndexedStack(
            index: 0,
            children: _pages,
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
