import 'package:flutter/material.dart';

/// child 의 width 를 child의 최대 크기로 맞춘다.
class IntrinsicWidthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IntrinsicWidth"),
      ),
      body: Material(
        child: Center(
          child: IntrinsicWidth(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  child: Text("itme1"),
                ),
                Container(
                  width: 200,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          alignment: Alignment.center,
                          child: Text("itme1\nitem2\nitem3")
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Text("Item4"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
