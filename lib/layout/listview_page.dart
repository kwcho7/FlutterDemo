import 'package:flutter/material.dart';
import 'dart:math';

class ListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListViewState();
  }
}

class ListViewState extends State<ListViewPage> {
  List<int> _list = [];
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
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("ListView"),
          ),
          body: ListView(
            controller: _scrollController,
            children: _list.map(_buildItem).toList(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _list.add(Random().nextInt(100));
              _scrollController.animateTo(_scrollController.position.maxScrollExtent + 100, duration: Duration(milliseconds: 500), curve: Curves.ease);
              setState(() {},);
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  Widget _buildItem(int value) {
    return Container(
      constraints: BoxConstraints.expand(height: 100),
      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
      child: FittedBox(
        child: Text(value.toString()),
      ),
    );
  }
}
