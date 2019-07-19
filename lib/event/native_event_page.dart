import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NativeEventPage extends StatefulWidget {
  @override
  _NativeEventPageState createState() => _NativeEventPageState();
}

class _NativeEventPageState extends State<NativeEventPage> {
  static const _methodChannel = MethodChannel("cools.flutter.channel.method/pressed");
  static const _eventChannel = EventChannel("cools.flutter.channel.event/increased");

  int _methodCount = 0;
  int _streamCount = 0;

  StreamSubscription _streamSubscription;

  @override
  void initState() {
    _streamSubscription =
        _eventChannel.receiveBroadcastStream().listen(
              (data) {
                setState(() {
                  _streamCount = data;
                });
              },
            );
    _getNativeValueAndIncrease();
    super.initState();
  }

  @override
  void dispose() {
    if(_streamSubscription != null){
      _streamSubscription.cancel();
      _streamSubscription = null;
    }
    super.dispose();
  }

  Future<void> _getNativeValueAndIncrease() async {
    try {
      final int result = await _methodChannel.invokeMethod("getValueAndIncrease");
      setState(() {
        _methodCount = result;
      });
    } on PlatformException catch (e) {
      setState(() {
        _methodCount = -1;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NativeEventPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Text(
                          _methodCount.toString(),
                          style: TextStyle(fontSize: 40),
                        ),
                        Text("Method"),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Text(
                          _streamCount.toString(),
                          style: TextStyle(fontSize: 40),
                        ),
                        Text("Stream"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(
          "+",
          style: TextStyle(fontSize: 30),
        ),
        onPressed: () {
          _getNativeValueAndIncrease();
        },
      ),
    );
  }
}
