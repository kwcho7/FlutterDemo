import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: BodyWidget(),
      builder: (ctx) => UserModel(),
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProviderPage"),
      ),
      body: Consumer<UserModel>(
        builder: (ctx, value, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(value.items[index]),
                  height: 40,
                ),
              );
            },
            itemCount: value.items.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("+"),
        onPressed: () {
          Provider.of<UserModel>(context)
              .addName(Random().nextInt(9999).toString());
        },
      ),
    );
  }
}

class UserModel with ChangeNotifier {
  final List<String> items = [];

  void addName(String name) {
    items.add(name);
    notifyListeners();
  }
}
