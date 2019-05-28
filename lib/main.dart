import 'package:flutter/material.dart';

import 'buttons/ButtonPage.dart';


// dev issue 1
// dev issue 2
// dev issue 3



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.all(18),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(right: 18, left: 18),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ButtonsPage();
                        }));
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text("Button Example"),
                    ),
                  )
                ],
              ),
            )));
  }
}
