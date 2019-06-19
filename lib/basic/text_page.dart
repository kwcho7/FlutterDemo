import 'package:flutter/material.dart';

class TextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Text"),
        ),
        body: Material(
          color: Colors.grey[300],
          child: Container(
            constraints: BoxConstraints.expand(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _defaultTextWidget("defaultText"),
                _sizeTextWidget("Size 20 Text", 20.0),
                _paintBackgroundStyleTextWidget("Paint background", Colors.amber),
                _paintForegroundStypeTextWidget("Paint Forground", Colors.black),
                _fontWeightTextWidget("Font Weight.BOLD"),
                _fontWeight700TextWidget("Font Weight.700"),
                _letterSpaceTextWidget("Letter Spacing.", 10),
                _wordSpaceTextWidget("Word Spacing", 10),
                _shadowTextWidget(
                    "Shadow Text", [Shadow(
                        color: Colors.pink,
                        offset: Offset(1, 1),
                        blurRadius: 1
                      ),]),
                _decoratorTextWidget("Text Decoration"),
                _decoratorUnderLineTextWidget("Text Decoration UnderLine"),
                _decoratorOverLineDashTextWidget("Text Decoration OverLine"),
                _alignTextWidget("Align right", TextAlign.right, Colors.blue[200]),
                _alignTextWidget("Align left", TextAlign.left, Colors.blue[300]),
                _alignTextWidget("Align center", TextAlign.center, Colors.blue[400]),
                _softWrapTextWidget("Soft wrap test false.. long text wrap test.", false),
                _softWrapTextWidget("Soft wrap test true... long text wrap test.", true),
                _maxLineTextWidget("max line 1 test, abcd efg hijk lmn opqr stu "),
                _scaleFactorTextWidget("scale factor"),
                _scaleFactor2TextWidget("scale factor2"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 기본 Text Widget
  Widget _defaultTextWidget(String text){
    return Text(text,
      style: TextStyle(
        backgroundColor: Colors.pink[100]
      ),
    );
  }

  // font size 를 변경한다.
  Widget _sizeTextWidget(String text, double textSize){
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize,
        backgroundColor: Colors.pink[100]
      ),
    );
  }

  // Font background style
  Widget _paintBackgroundStyleTextWidget(String text, Color backgroundColor) {
    return Text(
      text,
      style: TextStyle(
        background: Paint()
            ..color = backgroundColor
            ..style = PaintingStyle.stroke
            ..strokeWidth = 2
      ),
    );
  }

  // font foreground style
  Widget _paintForegroundStypeTextWidget(String text, Color forgroundColor) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
          foreground: Paint()
            ..color = forgroundColor
            ..style = PaintingStyle.stroke
      ),
    );
  }

  // Font weight bold
  Widget _fontWeightTextWidget(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold
      ),
    );
  }

  // Font weight
  Widget _fontWeight700TextWidget(String text) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w700
      ),
    );
  }

  // Letter Spacing
  Widget _letterSpaceTextWidget(String text, double spacing) {
    return Text(
      text,
      style: TextStyle(
        letterSpacing: spacing
      ),
    );
  }

  // Word spacing
  Widget _wordSpaceTextWidget(String text, double spacing) {
    return Text(
      text,
      style: TextStyle(
        wordSpacing: spacing
      ),
    );
  }

  // Shadow text
  Widget _shadowTextWidget(String text, List<Shadow> shadowListColor) {
    return Text(
      text,
      style: TextStyle(
        shadows: shadowListColor,
        fontSize: 30,
      ),
    );
  }

  // decorator
  Widget _decoratorTextWidget(String text){
    return Text(
      text,
      style: TextStyle(
        decoration: TextDecoration.lineThrough
      ),
    );
  }

  // decorator underLine
  Widget _decoratorUnderLineTextWidget(String text){
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.underline
      ),
    );
  }

  // decorator overLine dash
  Widget _decoratorOverLineDashTextWidget(String text){
    return Text(
      text,
      style: TextStyle(
        decoration: TextDecoration.overline,
        decorationStyle: TextDecorationStyle.dashed
      ),
    );
  }

  // align
  Widget _alignTextWidget(String text, TextAlign textAlign, Color color){
    return Container(
      color: color,
      constraints: BoxConstraints.expand(height: 30),
      child: Text(
        text,
        textAlign: textAlign,
      ),
    );
  }

  // soft wrap
  Widget _softWrapTextWidget(String text, bool usedSoftWrap) {
    return Container(
      color: Colors.yellow[200],
      constraints: BoxConstraints.expand(width: 200, height: 40),
      child: Text(
        text,
        softWrap: usedSoftWrap,
      ),
    );
  }

  // max line
  Widget _maxLineTextWidget(String text){
    return Container(
      constraints: BoxConstraints.expand(width: 250, height: 40),
      color: Colors.yellow[300],
      child: Text(
        text,
        maxLines: 1,
      ),
    );
  }

  Widget _scaleFactorTextWidget(String text) {
    return Text(
      "textScaleFactor = 1 fontSize = 16 ",
      style: TextStyle(fontSize: 16, color: Colors.blue),
      textScaleFactor: 1,
    );
  }

  Widget _scaleFactor2TextWidget(String text) {
    return Text(
      "textScaleFactor = 1.5 fontSize = 20 ",
      style: TextStyle(fontSize: 16, color: Colors.red),
      textScaleFactor: 1.2,
    );
  }
}

