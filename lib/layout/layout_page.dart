import 'package:flutter/material.dart';
import 'package:flutter_app_demo/layout/grid_layout_builder_page.dart';
import 'package:flutter_app_demo/layout/grid_layout_page.dart';
import 'package:flutter_app_demo/layout/overflow_box_page.dart';
import 'package:flutter_app_demo/layout/table_page.dart';
import 'package:flutter_app_demo/layout/visiblity_page.dart';
import 'package:flutter_app_demo/layout/wrap_page.dart';

import 'custom_multiple_child_page.dart';
import 'flow_page.dart';
import 'fractionally_page.dart';
import 'indexed_stack_page.dart';
import 'intrinsic_height_page.dart';
import 'intrinsic_width_page.dart';
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
        body: _scrollableVertical(
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _flowWidget(context),
                _fractionallyWidget(context),
                _indexedStackWidget(context),
                _scrollableHorizontal(_listViewWidget(context)),
                _layoutBuilderWidget(context),
                _customMultipleChildWidget(context),
                _gridLayoutWidget(context),
                _wrapWidget(context),
                _tableWidget(context),
                _intrinsicWidget(context),
                _visibilityWidget(context),
                _overflowBoxWidget(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _scrollableHorizontal(Widget child) {
    return SingleChildScrollView(
      child: child,
      scrollDirection: Axis.horizontal,
    );
  }

  Widget _scrollableVertical({Widget child}) {
    return SingleChildScrollView(
      child: child,
      scrollDirection: Axis.vertical,
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

  Widget _customMultipleChildWidget(BuildContext context) {
    return RaisedButton(
      child: Text("CustomMultipleChild"),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CustomMultipleChildPage()));
      },
    );
  }

  Widget _gridLayoutWidget(BuildContext context) {
    return Row(
      children: <Widget>[
        _gridLayoutCountWidget(context),
        SizedBox(
          width: 8,
        ),
        _gridLayoutBuilderWidget(context),
      ],
    );
  }

  Widget _gridLayoutCountWidget(BuildContext context) {
    return RaisedButton(
      child: Text("GrideLayout"),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => GridLayoutPage()));
      },
    );
  }

  Widget _gridLayoutBuilderWidget(BuildContext context) {
    return RaisedButton(
      child: Text("GridLayoutBuilder"),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (contxt) => GridLayoutBuilderPage()));
      },
    );
  }

  Widget _wrapWidget(BuildContext context) {
    return RaisedButton(
      child: Text("WrapLayout"),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => WrapPage()));
      },
    );
  }

  Widget _tableWidget(BuildContext context) {
    return RaisedButton(
      child: Text("Table Layout"),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TablePage()));
      },
    );
  }

  Widget _intrinsicWidget(BuildContext context) {
    return Row(
      children: <Widget>[
        _intrinsicWidthWidget(context),
        SizedBox(
          width: 8,
        ),
        _intrinsicHeightWidget(context),
      ],
    );
  }

  Widget _intrinsicWidthWidget(BuildContext context) {
    return RaisedButton(
      child: Text("IntrinsicWidth"),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => IntrinsicWidthPage()));
      },
    );
  }

  Widget _intrinsicHeightWidget(BuildContext context) {
    return RaisedButton(
      child: Text("IntrinsicHeight"),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => IntrinsicHeightPage()));
      },
    );
  }

  Widget _visibilityWidget(BuildContext context) {
    return RaisedButton(
      child: Text("Visibility"),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => VisibilityPage()));
      },
    );
  }

  Widget _overflowBoxWidget(BuildContext context) {
    return RaisedButton(
      child: Text("OverflowBox"),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => OverflowBoxPage()));
      },
    );
  }
}
