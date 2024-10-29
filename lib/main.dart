import 'package:flutter/material.dart';
import 'package:flutter_application_3/app/appNew.dart';
import 'package:flutter_application_3/playground/palyground.dart';
import './demo/form_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/material_components.dart';
import './demo/i18n/i18n_demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'demo/i18n/intl/ninghao_demo_localizations.dart';
import './demo/test/test_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: Locale('en', 'US'),
        // locale: Locale('zh', 'CN'),
        // localeResolutionCallback: (locale, supportedLocales) {
        //   return Locale('en', 'US');
        // },
        localizationsDelegates: [
          NinghaoDemoLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en', 'US'),
          Locale('zh', 'CN'),
        ],
        debugShowCheckedModeBanner: false,
        // home: Home(),
        initialRoute: '/app',
        routes: {
          '/': (context) => Home(),
          '/form': (context) => FormDemo(),
          '/mdc': (context) => MaterialComponents(),
          '/i18n': (context) => I18nDemo(),
          '/testDemo': (context) => TestDemo(),
          '/playground': (context) => Playground(),
          '/app': (context) => AppNew(),
        },
        theme: ThemeData(
          // useMaterial3: true,
          // primarySwatch: Colors.deepPurple,
          // primaryColor: Colors.deepOrange,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          highlightColor: Color.fromARGB(126, 12, 218, 47),
          splashColor: Colors.white70,
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              // Icon(
              //   Icons.local_florist,
              //   size: 128,
              //   color: Colors.black12,
              // ),
              // Icon(
              //   Icons.change_history,
              //   size: 128,
              //   color: Colors.black12,
              // ),
              BasicDemo(),
              Icon(
                Icons.directions_bike,
                size: 128,
                color: Colors.black12,
              ),
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
