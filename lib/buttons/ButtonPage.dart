import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ButtonState();
  }
}

class ButtonState extends State<ButtonsPage> {
  int _value = 0;
  String dropDownValue = "One";
  String _popupMenuValue = "None";
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
      body: _buildScroll(Material(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _raisedButtons(context),
              _flatButtons(context),
              _iconButtons(context),
              _dropDownButtons(context),
              _popupMenuButtons(context),
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

  Widget _floatingActionButton(BuildContext context) {
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
      default:
        throw Exception("Not support floating buttons type.");
    }
  }

  Widget _iconButtons(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      margin: EdgeInsets.only(left: 18, right: 18, bottom: 18),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              child: Text(
                "IconButtons",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
          Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.create),
                  tooltip: "Increase value.",
                  onPressed: () {
                    setState(() {
                      _value++;
                    });
                  }),
              Text("value.$_value")
            ],
          ),
          Material(
            color: Colors.transparent,
            child: Ink(
              width: 30,
              height: 30,
              decoration:
                  ShapeDecoration(color: Colors.blue, shape: CircleBorder()),
              child: IconButton(
                iconSize: 15,
                icon: Icon(Icons.timer),
                color: Colors.white,
                tooltip: "Ink decoration",
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dropDownButtons(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      margin: EdgeInsets.only(left: 18, right: 18, bottom: 18),
      padding: EdgeInsets.all(8),
      child: Container(
          alignment: Alignment.topLeft,
          child: Row(
            children: <Widget>[
              Text(
                "DropDown Menu",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 18,
              ),
              DropdownButton(
                value: dropDownValue,
                items: ["One", "Two"].map((menu) {
                  return DropdownMenuItem<String>(
                    value: menu,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.account_circle),
                        Text(menu),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (v) {
                  setState(() {
                    dropDownValue = v;
                  });
                },
              ),
            ],
          )),
    );
  }

  Widget _popupMenuButtons(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(left: 18, right: 18, bottom: 18),
        padding: EdgeInsets.all(8),
        color: Colors.grey.shade100,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text("PopupMenuButtons", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: PopupMenuButton(
                    onSelected: (v) {
                      setState(() {
                        _popupMenuValue = v;
                      });
                    },
                    child: Text("Popup"),
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(
                          child: Text("Popup item1"),
                          value: "Popup item1",
                        ),
                        PopupMenuItem(
                          child: Text("Popup item2"),
                          value: "Popup item2",
                        ),
                        PopupMenuItem(
                          child: Text("Popup item3"),
                          value: "Popup item3",
                        )
                      ];
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: PopupMenuButton(
                    onSelected: (v) {
                      setState(() {
                        _popupMenuValue = v;
                      });
                    },
                    icon: Icon(Icons.print),
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(
                          child: Text("Icon item1"),
                          value: "Icon item1",
                        ),
                        PopupMenuItem(
                          child: Text("Icon item2"),
                          value: "Icon item2",
                        ),
                        PopupMenuItem(
                          child: Text("Icon item3"),
                          value: "Icon item3",
                        )
                      ];
                    },
                  ),
                ),
                Text("selected.$_popupMenuValue")
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum FloatingButtonType { Action, Expand }
