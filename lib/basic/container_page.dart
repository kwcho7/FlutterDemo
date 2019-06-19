import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: _container(),
    );
  }

  Widget _container() {
    return Material(
      child: Column(
        children: <Widget>[
          // child, height, width, constraint 가 없으면 아무런 표현도 되지 않는다.
          Container(
            color: Colors.blue,
          ),
          // child, alignment 가 없으나 width, height가 있으면 width, height 를 draw 한다.
          Container(
            color: Colors.blue.shade900,
            width: 200,
            height: 10,
          ),
          // child, alignment 가 없으나 Constraints 가 있으면 BoxConstraints 를 draw 한다.
          Container(
            color: Colors.blue.shade800,
            constraints: BoxConstraints.expand(width: 200, height: 10),
          ),
          // child layout 크기 에 대한 정의
          Container(
            color: Colors.blue.shade700,
            constraints: BoxConstraints.expand(width: 200, height: 10),
            // child, width, height, constraint 가 없어도 parent 가 Constraint 이면 child 는 부모만큰 크기를 갖는다.
            child: Container(
              color: Colors.pink.shade900,
            ),
          ),
          Container(
            color: Colors.blue.shade700,
            // parent 가 Constraint 가 제공되지 않으고, Alignment 가 있다면 Container 는 자식의 크기를 채우려고 시도한다.
            child: Container(
              alignment: Alignment.center,
              color: Colors.pink.shade800,
              child: Text("h"),
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(width: 200, height: 20),
            color: Colors.blue.shade600,
            // parent 가 Constraint 가 제고되고, Alignment 가 있으면 부모만큰 채운다.
            child: Container(
              alignment: Alignment.center,
              color: Colors.pink.shade700,
              child: Text("h"),
            ),
          ),
          Container(
            width: 200,
            height: 20,
            color: Colors.blue.shade50,
            // parent 가 지정된 크기가 있고 alignment 가 지정되면 부모만큰 채운다.
            child: Container(
              alignment: Alignment.center,
              child: Text("h"),
              color: Colors.pink.shade600,
            ),
          ),
          Container(
            // width, height, constraint, alignment 가 없으면 자식 크기만큼 채운다.
            child: Container(
              color: Colors.blue.shade500,
              child: Text("h"),
            ),
          ),
          Container(
            color: Colors.blue.shade400,
            // layout margin, padding 은 layout 에 영향을 미친다.
            child: Container(
              margin: EdgeInsets.all(10),
              color: Colors.pink.shade500,
              width: 20,
              height: 20,
            ),
          ),
          Container(
            color: Colors.blue.shade300,
            width: 200,
            height: 40,
            // transform 을 이용해 rotation, translationValues 등을할 수 있다.
            child: Container(
              color: Colors.pink.shade400,
              width: 200,
              height: 40,
              transform: Matrix4.rotationZ(0.1),
            ),
          )
        ],
      ),
    );
  }
}