import 'package:flutter/material.dart';
import 'dart:math';

/// Holder 와 같이 전항목은 삭제되어진다. 대량의 리스트에 적합하다.
class ListViewBuilderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListViewBuilderState();
  }
}

class ListViewBuilderState extends State<ListViewBuilderPage> {
  List<int> _items = [];
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ListViewBuilder"),
        ),
        body: _buildList(context, _items),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _items.add(Random().nextInt(100));
            _scrollController.animateTo(
                _scrollController.position.maxScrollExtent + 100,
                duration: Duration(milliseconds: 100),
                curve: Curves.linear);
            setState(() {});
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, List<int> _items) {
    return ListView.builder(
      controller: _scrollController,
      itemBuilder: (BuildContext context, int index) {
        return _buildItem(_items[index]);
      },
      itemCount: _items.length,
    );
  }

  Widget _buildItem(int displayValue) {
    return Container(
      height: 100,
      child: FittedBox(
        child: Text(displayValue.toString()),
      ),
    );
  }
}
