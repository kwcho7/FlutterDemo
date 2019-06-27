import 'package:flutter/material.dart';
import 'package:flutter_app_demo/scroll/page_view_page.dart';
import 'package:flutter_app_demo/scroll/refresh_indicator_page.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollPage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _pageViewWidget(context),
              _refreshIndicatorWidget(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageViewWidget(BuildContext context){
    return RaisedButton(
      child: Text("PageView"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => PageViewPage()));
      },
    );
  }

  Widget _refreshIndicatorWidget(BuildContext context){
    return RaisedButton(
      child: Text("RefreshIndicatorPage"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => RefreshIndicatorPage()));
      },
    );
  }
}