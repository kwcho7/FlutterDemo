import 'package:flutter/material.dart';

import 'ContainerPage.dart';
import 'RowPage.dart';

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
            )
          ],
        ),
      ),
    );
  }
}