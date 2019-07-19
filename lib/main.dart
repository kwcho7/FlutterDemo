import 'package:flutter/material.dart';
import 'package:flutter_app_demo/appbar/sliver_appbar_page.dart';
import 'package:flutter_app_demo/async/future_builder_page.dart';
import 'package:flutter_app_demo/async/stream_builder_page.dart';
import 'package:flutter_app_demo/event/native_event_page.dart';
import 'package:flutter_app_demo/provider/provider_page.dart';
import 'package:flutter_app_demo/scroll/scroll_page.dart';

import 'basic/basic_page.dart';
import 'buttons/button_page.dart';
import 'input/form_page.dart';
import 'layout/layout_page.dart';

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

enum TestPage { main, buttons, basic, layout, scroll, appbar, input, async, provider, native_event }

class _MyHomePageState extends State<MyHomePage> {
  TestPage _testPage = TestPage.main;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: resolveAppBar(_testPage), body: resolveWidget(_testPage));
  }

  AppBar resolveAppBar(TestPage testPage) {
    switch (testPage) {
      case TestPage.main:
        return AppBar(
          title: Text("Flutter Demo"),
        );
      case TestPage.buttons:
      case TestPage.basic:
      case TestPage.layout:
      case TestPage.scroll:
      case TestPage.appbar:
      case TestPage.input:
      case TestPage.async:
      case TestPage.provider:
      case TestPage.native_event:
        return null;
      default:
        throw Exception("not supported testPage.$testPage");
    }
  }

  Widget resolveWidget(TestPage testPage) {
    switch (testPage) {
      case TestPage.main:
        return _mainExample(context);
      case TestPage.buttons:
        return ButtonsPage();
      case TestPage.basic:
        return BasicPage();
      case TestPage.layout:
        return LayoutPage();
      case TestPage.scroll:
        return ScrollPage();
      case TestPage.appbar:
        return SliverAppbarPage();
      case TestPage.input:
        return TextFieldPage();
      case TestPage.async:
        return _asyncWidget(context);
      case TestPage.provider:
        return ProviderPage();
      case TestPage.native_event:
        return NativeEventPage();
      default:
        throw Exception("not supported testPage.$testPage");
    }
  }

  Widget _mainExample(BuildContext context) {
    return Container(
        color: Colors.white,
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(18),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _basicExample(context),
                _buttonsExample(context),
                _layoutExample(context),
                _scrollExample(context),
                _appbarExample(context),
                _inputPageExample(context),
                _asyncWidget(context),
                _providerPageExample(context),
                _nativeEventPageExample(context),
              ],
            ),
          ),
        ));
  }

  Widget _basicExample(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
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

  Widget _layoutExample(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LayoutPage();
        }));
      },
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("Layout Example"),
    );
  }

  Widget _scrollExample(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ScrollPage();
        }));
      },
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("Scroll Example"),
    );
  }

  Widget _appbarExample(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SliverAppbarPage();
        }));
      },
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("Appbar Example"),
    );
  }

  Widget _inputPageExample(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return TextFieldPage();
        }));
      },
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("Input Example"),
    );
  }

  Widget _asyncWidget(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          _futureBuilderPageExample(context),
          SizedBox(
            width: 8,
          ),
          _streamBuilderPageExample(context),
        ],
      ),
    );
  }

  Widget _futureBuilderPageExample(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return FutureBuilderPage();
        }));
      },
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("FutrueBuilder Example"),
    );
  }

  Widget _streamBuilderPageExample(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return StreamBuilderPage();
        }));
      },
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("StreamBuilder Example"),
    );
  }

  Widget _providerPageExample(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProviderPage();
        }));
      },
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("Provider Example"),
    );
  }


  Widget _nativeEventPageExample(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NativeEventPage();
        }));
      },
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("NativeEvent Example"),
    );
  }


}
