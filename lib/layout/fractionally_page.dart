import 'package:flutter/material.dart';

// 부모 Widget 크기의 비율로 크기를 설정한다.
class FractionallyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Fractionally"),
        ),
        body: SizedBox.expand(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              FractionallyWidget(alignment: Alignment.topLeft),
              FractionallyWidget(alignment: Alignment.topRight),
              FractionallyWidget(alignment: Alignment.bottomLeft),
              FractionallyWidget(alignment: Alignment.bottomRight),
              FractionallyWidget(alignment: Alignment.center),
            ],
          ),
        ),
      ),
    );
  }
}

class FractionallyWidget extends StatelessWidget {
  const FractionallyWidget({Key key, this.alignment}) : super(key: key);

  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.5,
      heightFactor: 0.5,
      alignment: alignment,
      child: Container(
        color: Colors.pink,
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.5,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
