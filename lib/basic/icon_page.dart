import 'package:flutter/material.dart';

///
/// 아이콘을 표현한다.
///
class IconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Icon"),
        ),
        body: IconPageWidget(),
    );
  }
}

class IconPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IconPageState();
  }
}

class IconPageState extends State<IconPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _colorIcons(),
        _sizeIcons(),
        _themeIcons(),
        _imageIcons(),
      ],
    );
  }

  // Icon 의 color
  Widget _colorIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.access_alarm,
          color: Colors.pink,
        ),
        Icon(
          Icons.access_alarm,
          color: Colors.blue,
        )
      ],
    );
  }

  // Icon 의 Size
  Widget _sizeIcons() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.opacity,
          size: 20,
        ),
        Icon(
          Icons.opacity,
          size: 40,
        )
      ],
    );
  }

  // Icon Theme
  Widget _themeIcons() {
    return Row(
      children: <Widget>[
        IconTheme(
          data: IconThemeData(color: Colors.red, opacity: 0.5, size: 50),
          child: Icon(Icons.image),
        )
      ],
    );
  }

  // ImageIcon
  Widget _imageIcons() {
    return Row(
      children: <Widget>[
        ImageIcon(
          AssetImage("images/round_queue_black.png"),
          color: Colors.pink,
          size: 50,
        )
      ],
    );
  }
}