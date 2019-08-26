

// 布局列表

import 'package:flutter/material.dart';

class Layouts extends StatefulWidget {
  final Map<String,dynamic> params;
  final String title;

  Layouts({Key key, this.title, this.params = null });
  
  @override
  _LayoutsPageState createState() {
    return _LayoutsPageState();
  }
  
}

class _LayoutsPageState extends State<Layouts> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('test1'),
            Text('test2'),
          ],
        )
      )
    );
  }

}