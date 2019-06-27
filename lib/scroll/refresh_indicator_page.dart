import 'dart:math';

import 'package:flutter/material.dart';

/// Scrollable 에 Refresh Progress 를 보여준다.
class RefreshIndicatorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RefreshIndicatorState();
  }
}

class RefreshIndicatorState extends State<RefreshIndicatorPage> {

  int childValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RefreshIndicator"),
      ),
      body: _buildRefreshIndicatorWidget(context),
    );
  }

  Widget _buildRefreshIndicatorWidget(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        return refresh();
      },
      child: ListView(
        children: <Widget>[
          Card(
            child: Container(
              height: 200,
              alignment: Alignment.center,
              child: Text(
                childValue.toString(),
                style: TextStyle(
                  fontSize: 50,
                ),
              )
            ),
          ),
        ],
      ),
    );
  }

  Future refresh() async{
    await Future.delayed(Duration(milliseconds: 1000, ));
    setState(() {
      childValue = Random().nextInt(999);
    });
  }
}