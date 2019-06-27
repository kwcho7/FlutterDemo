import 'package:flutter/material.dart';

// Child widget 의 크기가 parent widget 의 크기보다 더 커질수 있는 Widget 이다.
class OverflowBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OverflowBox"),
      ),
      body: _overflowWidget(context),
    );
  }


  Widget _overflowWidget(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.pink[100],
          child: Center(
            child: Container(
              width: 80,
              height: 80,
              color: Colors.blue[200],

              child: OverflowBox(
                maxWidth: 200,
                child: Center(
                  child: Container(
                    width: 150,
                    height: 50,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}