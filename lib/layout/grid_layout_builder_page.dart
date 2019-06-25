import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

// 서로 다른 item 을 구현할때 사용한다.
class GridLayoutBuilderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GridLayoutBuilderState();
  }
}

class GridLayoutBuilderState extends State<GridLayoutBuilderPage> {
  List<String> items = [];

  @override
  void initState() {
    for (int i = 0; i < 7; i++) {
      items.add(i.toString());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridLayoutBuilder"),
      ),
      body: GridLayoutBuilderWidget(
        items: items,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            items.add(Random().nextInt(100).toString());
          });
        },
      ),
    );
  }
}

class GridLayoutBuilderWidget extends StatelessWidget {
  const GridLayoutBuilderWidget({this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 2 / 1, crossAxisSpacing: 4),
      itemBuilder: (context, index) {
        return _buildItem(items[index], index%2 == 0 ? Colors.red : Colors.yellow);
      },
      itemCount: items.length,
    );
  }

  Widget _buildItem(String value, Color color) {
    return Card(
      color: color,
      child: Align(
        child: Text(value),
        alignment: Alignment.center,
      ),
    );
  }
}
