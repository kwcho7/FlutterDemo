import 'package:flutter/material.dart';

import 'basic/BasicPage.dart';
import 'buttons/ButtonPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum TestPage{
  main, buttons, basic
}

class _MyHomePageState extends State<MyHomePage> {

  TestPage _testPage = TestPage.main;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: resolveAppBar(_testPage),
        body: resolveWidget(_testPage)
    );
  }

  AppBar resolveAppBar(TestPage testPage) {
    switch(testPage){
      case TestPage.main:
        return AppBar(
          title: Text("Flutter Demo"),
        );
      case TestPage.buttons:
      case TestPage.basic:
        return null;
      default:
        throw Exception("not supported testPage.$testPage");
    }
  }

  Widget resolveWidget(TestPage testPage){
    switch(testPage){
      case TestPage.main:
        return _mainExample(context);
      case TestPage.buttons:
        return ButtonsPage();
      case TestPage.basic:
        return BasicPage();
      default:
        throw Exception("not supported testPage.$testPage");
    }
  }

  Widget _mainExample(BuildContext context){
    return Container(
        color: Colors.white,
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(18),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _basicExample(context),
              _buttonsExample(context),
            ],
          ),
        )
    );
  }

  Widget _basicExample(BuildContext context){
    return RaisedButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return BasicPage();
        }));
      },
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("Basic Example"),
    );
  }

  Widget _buttonsExample(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ButtonsPage();
        }));
      },
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("Button Example"),
    );
  }
}
