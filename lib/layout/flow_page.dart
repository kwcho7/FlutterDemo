import 'package:flutter/material.dart';

/// Stack Widget 와 비슷하기만 성능이 더 뛰어난 Widget이다.
class FlowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FlowState();
  }
}

class FlowState extends State<FlowPage> with SingleTickerProviderStateMixin{
  bool isExpanded = false;
  AnimationController openAnimationController;

  final List<String> list = <String>["Home", "Feed", "Chat", "Settings", "About"];

  @override
  void initState() {
    openAnimationController = AnimationController(
      lowerBound: 1,
      upperBound: 10,
      duration: Duration(milliseconds: 100),
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
          appBar: AppBar(
            title: Text("FlowPage"),
          ),
          body: _flowBodyWidget(context, openAnimationController),
          floatingActionButton: FloatingActionButton(
            child: _floatingWidget(isExpanded),
            onPressed: () {
              setState(() {
                if(isExpanded){
                  openAnimationController.reverse();
                }
                else {
                  openAnimationController.forward();
                }
                isExpanded = !isExpanded;
              });
            }
          ),
        ),
    );
  }

  Widget _floatingWidget(bool isExpanded) {
    if(isExpanded){
      return Icon(Icons.keyboard_arrow_up);
    }
    else {
      return Icon(Icons.keyboard_arrow_down);
    }
  }

  Widget _flowBodyWidget(BuildContext context, AnimationController animationController) {
    return Container(
      child: Flow(
        delegate: FlowDelegateImpl(animationController),
        children: list.map<Widget>((i) => _buildFlowItem(context, i)).toList(),
      ),
    );
  }

  Widget _buildFlowItem(BuildContext context, String displayValue) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.pink[100],
          border: Border.all(width: 1),
          boxShadow: [BoxShadow(blurRadius: 2)]),
      child: FittedBox(
        child: Text(displayValue.toString()),
      ),
    );
  }
}

class FlowDelegateImpl extends FlowDelegate {
  FlowDelegateImpl(this._animationController) : super(repaint: _animationController);

  AnimationController _animationController;

  @override
  void paintChildren(FlowPaintingContext context) {
    double dy = 0.0;
    for (int i = 0; i < context.childCount; ++i) {
      dy = context.getChildSize(i).height * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          0,
          dy * 0.1 * _animationController.value,
          0,
        ),
      );
    }
  }

  @override
  bool shouldRepaint(FlowDelegateImpl oldDelegate) {
    return _animationController != oldDelegate._animationController;
  }
}
