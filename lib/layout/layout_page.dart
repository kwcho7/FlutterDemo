import 'package:flutter/material.dart';

import 'flow_page.dart';

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
}