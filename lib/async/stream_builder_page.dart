import 'dart:io';

import 'package:flutter/material.dart';

/// 비동기로 데이터를 갱신할때 사용한다.
class StreamBuilderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StreamBuilderState();
  }
}

class StreamBuilderState extends State<StreamBuilderPage> {

//  Stream<int> _stream() {
//    return Stream<int>.periodic(Duration(milliseconds: 1000), (value) => value).take(10);
//  }

  Stream<int> _stream() async*{
    for(int i = 0; i < 10; i++){
      await Future.delayed(Duration(milliseconds: 1000));
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamBuilder"),
      ),
      body: _buildBodyWidget(_countStreamBuilder(context)),
    );
  }

  Widget _countStreamBuilder(BuildContext context) {
    return StreamBuilder(
      stream: _stream(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return _buildNumberCard("none");
          case ConnectionState.waiting:
            return _buildNumberCard("waiting");
          case ConnectionState.active:
            return _buildNumberCard("active", snapshot:snapshot);
          case ConnectionState.done:
            return _buildNumberCard("done", snapshot:snapshot);
        }
      },
    );
  }

  Widget _buildNumberCard(String tag, {var snapshot}) {
    return Center(
     child: Card(
       child: Container(
         color: Colors.pink[100],
         width: 200,
         height: 200,
         alignment: Alignment.center,
         child: snapshot != null ? Text("$tag.${snapshot.data}") : Text("$tag"),
       ),
     ),
    );
  }

  Widget _buildBodyWidget(Widget child) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: Colors.yellow[100],
      child: child,
    );
  }
}
