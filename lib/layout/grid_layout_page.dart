import 'package:flutter/material.dart';

/// 고정된 item 갯수를 표현할때 사용하는 grid view 이다.
class GridLayoutPage extends StatelessWidget {
  final List _values = [];

  @override
  Widget build(BuildContext context) {
    attachItems();
    return Scaffold(
      appBar: AppBar(
        title: Text("GridLayout"),
      ),
      body: _gridLayout(context),
    );
  }

  void attachItems() {
    for (int i = 0; i < 100; i++) {
      _values.add(i.toString());
    }
  }

  Widget _gridLayout(BuildContext context) {
    return GridView.count(
      childAspectRatio: 2/1,
      controller: ScrollController(keepScrollOffset: false),
      crossAxisCount: 2,
      children: _values.map((value) => _buildItem(value)).toList(),
    );
  }

  Widget _buildItem(String value) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.center,
        child: Text(value),
      ),
    );
  }
}
