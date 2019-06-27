import 'package:flutter/material.dart';

/// Page 단위로 widget 을 display 할때 사용한다.
class PageViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: _buildPageViewHorizontal(context, 0.8, false),
          ),
          Expanded(
            flex: 1,
            child: _buildPageViewHorizontal(context, 1, true),
          ),
          Expanded(
            flex: 1,
            child: _buildPageViewVertical(context),
          ),
        ],
      ),
    );
  }

  Widget _buildCardItem(String itemName){
    return Card(
      child: Container(
        alignment: Alignment.center,
        child: Text(itemName)
      ),
    );
  }

  Widget _buildPageViewHorizontal(BuildContext context, double fraction, bool snapping) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: PageController(
        viewportFraction: fraction,
      ),
      pageSnapping: snapping,
      children: <Widget>[
        _buildCardItem("Horizontal Item1"),
        _buildCardItem("Horizontal Item2"),
        _buildCardItem("Horizontal Item3"),
        _buildCardItem("Horizontal Item4"),
      ],
    );
  }

  Widget _buildPageViewVertical(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _buildCardItem("Vertical Item1"),
        _buildCardItem("Vertical Item2"),
        _buildCardItem("Vertical Item3"),
        _buildCardItem("Vertical Item4"),
        _buildCardItem("Vertical Item5"),
      ],
    );
  }
}
