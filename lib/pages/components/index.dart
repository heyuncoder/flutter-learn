

// 布局列表

import 'package:flutter/material.dart';

class Components extends StatefulWidget {

  final String title;
  final Map<String,dynamic> params;

  Components({Key key, this.title, this.params = null});
  
  @override
  _ComponentsPageState createState() {
    return _ComponentsPageState();
  }
  
}

class _ComponentsPageState extends State<Components> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text('test1'),
            Text('test2'),
          ],
        )
      )
    );
  }

}