import 'package:flutter/material.dart';

import 'flow_page.dart';
import 'fractionally_page.dart';
import 'indexed_stack_page.dart';
import 'layout_builder_page.dart';
import 'listview_builder_page.dart';
import 'listview_items_page.dart';
import 'listview_page.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
          appBar: AppBar(
            title: Text("layout page"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _flowWidget(context),
                  _fractionallyWidget(context),
                  _indexedStackWidget(context),
                  _listViewWidget(context),
                  _layoutBuilderWidget(context),
                ],
              ),
            ),
          ),
        ),
    );
  }

  Widget _flowWidget(BuildContext context) {
    return RaisedButton(
      child: Text("Flow Layout"),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FlowPage()));
      },
    );
  }

  Widget _fractionallyWidget(BuildContext context) {
    return RaisedButton(
      child: Text("Fractionally Layout"),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => FractionallyPage()));
      },
    );
  }

  Widget _indexedStackWidget(BuildContext context) {
    return RaisedButton(
      child: Text("IndexedStack"),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => IndexedStackPage()));
      },
    );
  }

  Widget _listViewWidget(BuildContext context) {
    return Row(
      children: <Widget>[
        RaisedButton(
          child: Text("ListView"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ListViewPage()));
          },
        ),
        SizedBox(
          width: 8,
        ),
        RaisedButton(
          child: Text("ListView Builder"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ListViewBuilderPage()));
          },
        ),
        SizedBox(
          width: 8,
        ),
        RaisedButton(
          child: Text("ListView Items"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ListViewItemsPage()));
          },
        ),
      ],
    );
  }

  Widget _layoutBuilderWidget(BuildContext context) {
    return RaisedButton(
      child: Text("LayoutBuilder"),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => LayoutBuilderPage()));
      },
    );
  }
}
