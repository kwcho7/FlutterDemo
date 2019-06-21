import 'package:flutter/material.dart';

/// Widget 을 Build 할때 부모의 크기를 미리 알 필요가 있을때 사용한다.
class LayoutBuilderPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LayoutBuilderState();
  }
}

class LayoutBuilderState extends State<LayoutBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilder"),
      ),
      body: LayoutBuilder(
        builder: (buildContext, constraint){
          if(MediaQuery.of(buildContext).orientation == Orientation.landscape){
            return LandscapeBodyWidget();
          }
          else {
            return PortraitBodyWidget();
          }
        },
      ),
    );
  }
}


class LandscapeBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ImageWidget(),
        DescriptionWidget(),
      ],
    );
  }
}

class PortraitBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ImageWidget(),
        DescriptionWidget(),
      ],
    );
  }
}


class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Container(
        color: Colors.blue[100],
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildCard("Card - 0"),
            _buildCard("Card - 1"),
            _buildCard("Card - 2"),
            _buildCard("Card - 3"),
            _buildCard("Card - 4"),
            _buildCard("Card - 5"),
            _buildCard("Card - 6"),
            _buildCard("Card - 7"),
            _buildCard("Card - 8"),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String text) {
    return Card(
      color: Colors.pink[200],
      margin: EdgeInsets.all(4),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(16),
        child: Text(text),
      ),
    );
  }
}