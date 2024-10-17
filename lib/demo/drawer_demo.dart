import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text(
            'hanling',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          accountEmail: Text('hanling@qq.com'),
          currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://file.40017.cn/uticket/strongCache/sagittarius_backend/qa/jxg2e8p8j4ay9s361724297969342.png')),
          decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://file.40017.cn/uticket/strongCache/sagittarius_backend/qa/11iyldtn000rxonv1720008376328.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow.withOpacity(0.6), BlendMode.hardLight))),
        ),
        // DrawerHeader(
        //   child: Text('header'.toUpperCase()),
        //   decoration: BoxDecoration(color: Colors.grey[100]),
        // ),
        ListTile(
          title: Text(
            'Messages',
            textAlign: TextAlign.right,
          ),
          trailing: Icon(
            Icons.message,
            color: Colors.black12,
            size: 22.0,
          ),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text(
            'Favorite',
            textAlign: TextAlign.right,
          ),
          trailing: Icon(
            Icons.message,
            color: Colors.black12,
            size: 22.0,
          ),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text(
            'Settings',
            textAlign: TextAlign.right,
          ),
          trailing: Icon(
            Icons.message,
            color: Colors.black12,
            size: 22.0,
          ),
          onTap: () => Navigator.pop(context),
        ),
      ],
    ));
  }
}
