import 'package:flutter/material.dart';

import 'container_page.dart';
import 'icon_page.dart';
import 'image_page.dart';
import 'row_page.dart';
import 'scaffold_page.dart';
import 'text_page.dart';

class BasicPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BasicState();
  }
}

class BasicState extends State<BasicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BasicPage"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Container"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContainerPage()));
              },
            ),
            RaisedButton(
              child: Text("Row"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RowPage()));
              },
            ),
            RaisedButton(
              child: Text("Image"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ImagePage()));
              },
            ),
            RaisedButton(
              child: Text("Text"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TextPage()));
              },
            ),
            RaisedButton(
              child: Text("Icon"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => IconPage()));
              },
            ),
            RaisedButton(
              child: Text("Scaffold"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScaffoldPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}