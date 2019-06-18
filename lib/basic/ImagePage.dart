import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildScroll(
        Column(
          children: <Widget>[
            Image.network("https://cdn.pixabay.com/photo/2015/07/27/19/47/turtle-863336__340.jpg"),
            Image.asset("images/dog.jpeg"),
            Image.asset("images/dog.jpeg", width: 200, color: Colors.purple, colorBlendMode: BlendMode.lighten,),
            Image.asset("images/dog.jpeg", height: 200, color: Colors.purple, colorBlendMode: BlendMode.colorDodge),
          ],
        )
    );
  }

  Widget _buildScroll(Widget child) {
    return LayoutBuilder(builder: (context, viewportConstraint) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: viewportConstraint.maxHeight),
          child: child,
        ),
      );
    });
  }
}