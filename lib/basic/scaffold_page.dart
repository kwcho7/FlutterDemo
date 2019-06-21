import 'package:flutter/material.dart';

/// Scaffold 는 SnackBar, BottomSheet, FloattingActionButton 등을 display 하기위한 container Widget 이다.
///
class ScaffoldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScaffoldBodyWidget bodyWidget = ScaffoldBodyWidget();
    return Scaffold(
        appBar: AppBar(
          title: Text("Scaffold"),
        ),
        body: bodyWidget,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            bodyWidget.increaseValue();
          },
          child: Icon(Icons.plus_one),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: BottomAppBar(
          child: Container(height: 50,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.image),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.opacity),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.print),
                  onPressed: (){},
                )
              ],
            ),
          ),
        ),
    );
  }
}


class ScaffoldBodyWidget extends StatefulWidget {
  final state = ScaffoldBodyState();
  void increaseValue(){
    state.increaseValue();
  }

  @override
  State<StatefulWidget> createState() {
    return state;
  }
}


class ScaffoldBodyState extends State<ScaffoldBodyWidget> {
  int _stateValue = 0;

  void increaseValue(){
    setState(() {
      _stateValue += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text("scaffold state value.$_stateValue");
  }
}
