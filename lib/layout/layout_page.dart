import 'package:flutter/material.dart';

import 'flow_page.dart';
import 'fractionally_page.dart';
import 'indexed_stack_page.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text("layout page"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                _flowWidget(context),
                _fractionallyWidget(context),
                _indexedStackWidget(context),
              ],
            ),
          )
      ),
    );
  }

  Widget _flowWidget(BuildContext context) {
    return RaisedButton(
      child: Text("Flow Layout"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => FlowPage()));
      },
    );
  }

  Widget _fractionallyWidget(BuildContext context) {
    return RaisedButton(
      child: Text("Fractionally Layout"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => FractionallyPage()));
      },
    );
  }

  Widget _indexedStackWidget(BuildContext context){
    return RaisedButton(
      child: Text("IndexedStack"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => IndexedStackPage()));
      },
    );
  }
}