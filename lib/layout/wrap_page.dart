import 'package:flutter/material.dart';

// layout 의 범위가 넘어가면 가로 또는 세로에 아이템을 배치한다.
class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WrapLayout"),
      ),
      body: _wrapScroll(_buildWrapBodyWidget(context)),
    );
  }

  Widget _wrapScroll(Widget child){
    return SingleChildScrollView(
      child: child,
    );
  }

  Widget _buildWrapBodyWidget(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: <Widget>[
        _buildItem("Item1"),
        _buildItem("Item2"),
        _buildItem("Item3"),
        _buildItem("Item4"),
        _buildItem("Item5"),
      ],
    );
  }

  Widget _buildItem(String name){
    return Container(
      margin: EdgeInsets.all(4),
      width: 100,
      height: 50,
      color: Colors.grey,
      child: LimitedBox(
        maxHeight: 40,
        child: Text(name),
      ),
    );
  }
}
