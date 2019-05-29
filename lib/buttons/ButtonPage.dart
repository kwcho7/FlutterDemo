import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ButtonState();
  }
}

class ButtonState extends State<ButtonsPage> {
  FloatingButtonType _floatingButtonType = FloatingButtonType.Action;

  Widget _buildScroll(Widget child) {
    return LayoutBuilder(builder: (context, viewportConstraint) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: viewportConstraint.maxHeight),
          child: child,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons Example"),
      ),
      body: _buildScroll(Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // RaiseButton
              _raisedButtons(context),
              // FlatButton
              _flatButtons(context),
            ],
          ),
        ),
      )),
      floatingActionButton: _floatingActionButton(context),
    );
  }

  Widget _raisedButtons(BuildContext context) {
    return Container(
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
    );
  }

  Widget _flatButtons(BuildContext context) {
    return Container(
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
              ButtonTheme(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("FlatButton Height 50"),
                ),
              ),
              ButtonTheme(
                height: 18,
                child: FlatButton(
                  onPressed: () {},
                  child: Text("FlatButton Height 18"),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              ButtonTheme(
                shape: Border.all(
                  width: 1,
                  color: Colors.blue,
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Text("FlatButton Border"),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    side: BorderSide()),
                child: FlatButton(
                    onPressed: () {}, child: Text("FlatButton Rounded Border")),
              )
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                height: 25,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: ButtonTheme(
                    child: FlatButton(
                        onPressed: () {}, child: Text("FlatButton Solid")),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              SizedBox(
                height: 25,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: ButtonTheme(
                    shape: Border.all(color: Colors.black),
                    child: FlatButton(
                        onPressed: () {},
                        child: Text("FlatButton Solid Border")),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                height: 30,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: ButtonTheme(
                    height: 30,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        side: BorderSide(color: Colors.black)),
                    child: FlatButton(
                        onPressed: () {},
                        child: Text("FlatButton sold round border")),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _floatingActionButton(BuildContext context) {
    switch (_floatingButtonType) {
      case FloatingButtonType.Action:
        return FloatingActionButton(
            onPressed: () {
              setState(() {
                _floatingButtonType = FloatingButtonType.Expand;
              });
            },
            backgroundColor: Colors.pink,
            child: Icon(Icons.add));
      case FloatingButtonType.Expand:
        return FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              _floatingButtonType = FloatingButtonType.Action;
            });
          },
          backgroundColor: Colors.pink,
          label: Text("Add"),
          icon: Icon(Icons.add),
        );
    }
  }
}

enum FloatingButtonType { Action, Expand }
