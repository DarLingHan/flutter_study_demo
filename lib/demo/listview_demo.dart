import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(children: <Widget>[
        Image.network(posts[index].imgUrl),
        SizedBox(height: 18),
        Text(posts[index].title,
            style: Theme.of(context).textTheme.titleMedium),
        Text(
          posts[index].author,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        SizedBox(height: 16),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
