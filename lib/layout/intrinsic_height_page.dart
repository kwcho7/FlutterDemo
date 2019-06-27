import 'package:flutter/material.dart';

/// child 의 height 를 child의 최대 크기로 맞춘다.
class IntrinsicHeightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IntrinsicHeight"),
      ),
      body: Material(
        child: Center(
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("itme1"),
                  ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Item4"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
