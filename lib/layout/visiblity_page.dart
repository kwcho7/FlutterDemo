import 'package:flutter/material.dart';

/// Visibility, Offstage, Opacity 를 이용하여 Widget 의 visibility 를 변경할 수 있다.
class VisibilityPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VisibilityState();
  }
}

class VisibilityState extends State<VisibilityPage> {

  bool isVisibleItem1 = true;
  bool isVisibleItem2 = true;
  bool isVisibleItem3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VisibilityPage"),
      ),
      body: _visibilityWidget(context),
    );
  }

  Widget _visibilityWidget(BuildContext context) {
    return Table(
      defaultColumnWidth: FractionColumnWidth(0.5),
      children: [
        _visibleTableRow("Item1"),
        _offstageTableRow("Item2"),
        _opacityTableRow("Item3"),
      ],
    );
  }

  /// 랜더링을하고 자리를 차지하지만 화면에 보이지 않는다.
  TableRow _opacityTableRow(String itemName) {
    return TableRow(
        decoration: BoxDecoration(
          color: Colors.yellow[900],
        ),
        children: [
          Container(
            child: RaisedButton(
              child: Text("$itemName.opacity(${isVisibleItem3 ? 1 : 0})"),
              onPressed: () {
                setState(() {
                  isVisibleItem3 = !isVisibleItem3;
                });
              },
            ),
          ),
          Opacity(
            opacity: isVisibleItem3 ? 1 : 0,
            child: Card(
              child: Container(
                alignment: Alignment.center,
                height: 80,
                child: Text("$itemName"),
              ),
            ),
          ),
        ]
    );
  }

  /// 랜더링을 하지만 화면에 표시하지 않는다. ( space 를 차지하지 않는다.)
  TableRow _offstageTableRow(String itemName) {
    return TableRow(
        decoration: BoxDecoration(
          color: Colors.yellow[700],
        ),
        children: [
          Container(
            child: RaisedButton(
              child: Text("$itemName.offstage($isVisibleItem2)"),
              onPressed: () {
                setState(() {
                  isVisibleItem2 = !isVisibleItem2;
                });
              },
            ),
          ),
          Offstage(
            offstage: isVisibleItem2,
            child: Card(
              child: Container(
                alignment: Alignment.center,
                height: 80,
                child: Text("$itemName"),
              ),
            ),
          ),
        ]
    );
  }

  // 랜더링을 하지 않고 공간을 차지하지 않는다.
  TableRow _visibleTableRow(String itemName) {
    return TableRow(
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
        children: [
          Container(
            child: RaisedButton(
              child: Text("$itemName.visible($isVisibleItem1)"),
              onPressed: (){
                setState(() {
                  isVisibleItem1 = !isVisibleItem1;
                });
              },
            ),
          ),
          Visibility(
            visible: isVisibleItem1,
            child: Card(
              child: Container(
                alignment: Alignment.center,
                height: 80,
                child: Text("$itemName"),
              ),
            ),
          ),
        ]
    );
  }
}