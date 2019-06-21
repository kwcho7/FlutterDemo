import 'package:flutter/material.dart';
import 'dart:math';

/// Widget이 build 될때 특정 위치에 layout 할때 사용한다.
class CustomMultipleChildPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomMultipleChildState();
  }
}

class CustomMultipleChildState extends State<CustomMultipleChildPage> {

  List<NumberItem> numberItemList = [
    NumberItem(0),
    NumberItem(1),
    NumberItem(2),
    NumberItem(3),
    NumberItem(4),
    NumberItem(5),
    NumberItem(6),
    NumberItem(7),
    NumberItem(8),
    NumberItem(9),
    NumberItem(10),
    NumberItem(11),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomMultipleChild"),
      ),
      body: Center(
        child: CustomMultiChildLayout(
          delegate: CustomMultipleChildDelegate(numberItemList),
          children: numberItemList.map((numberItem){
            return LayoutId(
              id: numberItem.id,
              child: Text(numberItem.number.toString()),
            );
          }).toList(),
        ),
      ),
    );
  }
}


class NumberItem {
  final int number;
  String id ;

  NumberItem(this.number){
    id = "id.child.${number.toString()}";
  }
}

class CustomMultipleChildDelegate extends MultiChildLayoutDelegate {

  CustomMultipleChildDelegate(this.numberItemList){
    _itemSpacing = 360.0 / numberItemList.length;
  }

  final List<NumberItem> numberItemList;
  int radius = 150;
  double _radiansPerDegree = pi / 180;
  double _startAngle = -90.0 * pi / 180;
  double _itemSpacing = 0;

  @override
  void performLayout(Size size) {
    Offset center = Offset(size.width/2, size.height/2);
    int index = 0;
    numberItemList.forEach((numberItem){
      if(hasChild(numberItem.id)){
        final double itemAngle = _calculateItemAngle(index++);

        Size itemSize = layoutChild(numberItem.id, BoxConstraints.loose(size));
        positionChild(numberItem.id, _buildOffset(itemAngle, center, itemSize));
      }
    });
  }

  Offset _buildOffset(double itemAngle, Offset center, Size buttonSize) {
    return Offset(
      (center.dx - buttonSize.width / 2) + (radius) * cos(itemAngle),
      (center.dy - buttonSize.height / 2) + (radius) * sin(itemAngle)
    );
  }

  double _calculateItemAngle(int index) {
    return _startAngle + index * _itemSpacing * _radiansPerDegree;
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
