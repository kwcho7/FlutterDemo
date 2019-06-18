import 'package:flutter/material.dart';

///
/// Child Widget array를 가로 방향으로 display 하는 widget Container 이다.
/// Child Widget 을 사용 가능한 공간을 채우고 확장되게 하려면 Child Widget 을 Expanded 로 감싸면된다.
/// Row Widget 은 Scroll 되지 않는다. Scroll 되게 하려면 ListView 로 구현하면된다.
/// Child Widget 이 1개라면 Align이나 Center 를 사용하여 Child Widget 의 위치를 변경할 수 있다.
///
/// Child widget 이 Expanded 나 Flexible 보다 더 넓은 공간이 필요하면 노란색과 검정색의 stripe 이 display 나타난다.
/// Expanded factor (ex - flex: 1) 를 이용해 공간의 비율을 설정할 수 있다.
///
/// Expanded 는 Flexible 을 상속받아 구현되었으며 flexible flex:1, fit: FlexFit.tight 을 기본값으로 한다.
/// Row의 Child widget 중 가장 큰 height 로 Row 의 height 가 결정된다.
///
///
class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
      ),
      body: _container(),
    );
  }

  Widget _container() {
    return Material(
      child: Column(
        children: <Widget>[
          _expandDefault(),
          _singleChild(),
          _factorChild(),
          _flexibleChild(),
          _differentChildHeight(),
          _mainAxisChild(),
        ],
      ),
    );
  }

  Widget _mainAxisChild() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          color: Colors.purple[100],
          child: Text(
            "axisMax"
          ),
        ),
        Container(
          color: Colors.purple[100],
          child: Text(
              "axisMax2"
          ),
        )
      ],
    );
  }

  Widget _differentChildHeight() {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.yellow,
          height: 40,
          child: Text(
            "height 40",
            style: TextStyle(backgroundColor: Colors.purple[100]),
          ),
        ),
        Container(
          color: Colors.yellow[600],
          child: Text("height"),
        )
      ],
    );
  }

  Widget _flexibleChild() {
    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.loose,
          child: Text(
            "flexible",
            style: TextStyle(
              backgroundColor: Colors.amber[100]
            ),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            color: Colors.amber,
            child: Text(
              "flexible",
              style: TextStyle(
                  backgroundColor: Colors.amber[100]
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _factorChild() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Text(
            "factor1",
            style: TextStyle(backgroundColor: Colors.yellow[100]),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "factor2",
            style: TextStyle(backgroundColor: Colors.yellow[100]),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            "factor3",
            style: TextStyle(backgroundColor: Colors.yellow[100]),
          ),
        ),
      ],
    );
  }

  Widget _singleChild() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Single Child Align.center",
              style: TextStyle(backgroundColor: Colors.blue[100]),
            ),
          ),
        )
      ],
    );
  }

  Widget _expandDefault() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            "r1.child1",
            style: TextStyle(backgroundColor: Colors.pink[100]),
          ),
        ),
        Expanded(
          child: Text(
            "r1.child2",
            style: TextStyle(backgroundColor: Colors.pink[200]),
          ),
        ),
        Expanded(
          child: Text(
            "r1.child3",
            style: TextStyle(backgroundColor: Colors.pink[300]),
          ),
        ),
      ],
    );
  }
}
