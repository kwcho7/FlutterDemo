import 'package:flutter/material.dart';

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
      body: Material(
        child: Column(
          children: <Widget>[
            Text("BasicPage")
          ],
        ),
      ),
    );
  }
}