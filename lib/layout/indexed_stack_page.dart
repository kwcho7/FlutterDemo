import 'package:flutter/material.dart';

// Stack 과 비슷하지만 indexed 된 stack item 만 visible 한다.
class IndexedStackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IndexedStackState();
  }
}

class IndexedStackState extends State<IndexedStackPage> {
  int _stackIndex = 0;

  List<String> _stackedIndex = [
    "Stack 1",
    "Stack 2",
    "Stack 3",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("IndexedStack"),
        ),
        body: _indexedStackWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _stackIndex += 1;
              if (_stackIndex >= _stackedIndex.length) {
                _stackIndex = 0;
              }
            });
          },
          child: Icon(Icons.plus_one),
        ),
      ),
    );
  }

  Widget _indexedStackWidget() {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: IndexedStack(
        index: _stackIndex,
        children: _stackedIndex.map(_buildItem).toList(),
      ),
    );
  }

  Widget _buildItem(String value) {
    return Center(
      child: Text(value),
    );
  }
}
