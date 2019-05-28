import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ButtonState();
  }
}

class ButtonState extends State<ButtonsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons Example"),
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              // RaiseButton
              Container(
                margin: EdgeInsets.only(top: 18, left: 18, right: 18),
                color: Colors.grey[100],
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Align(
                      child: Text(
                        "RaiseButton",
                        style: TextStyle(fontSize: 18),
                      ),
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {},
                          child: Text("RaisedButton Enable"),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        RaisedButton(
                          onPressed: null,
                          child: Text("RaisedButton Disable"),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        RaisedButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          textColor: Colors.white,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ])),
                            padding: EdgeInsets.all(10),
                            child: Text("RaisedButton Decoration"),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: ButtonTheme(
                        height: 30,
                        child: RaisedButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          child: Container(
                            child: Text("RaisedButton ButtonTheme"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // FlatButton
              Container(
                color: Colors.grey[100],
                margin: EdgeInsets.all(18),
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Text(
                      "FlatButton",
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Text("FlatButton Enable"),
                        ),
                        FlatButton(
                          onPressed: null,
                          child: Text("FlatButton Disable"),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Text("FlatButton Enable"),
                        ),
                        FlatButton(
                          onPressed: null,
                          child: Text("FlatButton Disable"),
                        )
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
