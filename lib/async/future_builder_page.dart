import 'package:flutter/material.dart';

class FutureBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder"),
      ),
      body: _buildFutureBuilderBodyWidget(context),
    );
  }

  Widget _buildFutureBuilderBodyWidget(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: Colors.yellow[100],
      child: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 200),
            color: Colors.pink[100],
            alignment: Alignment.center,
            child: Text("Box...", style: TextStyle(fontSize: 50),),
          ),
          CountWidget(),
        ],
      ),
    );
  }
}

class CountWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CountState();
  }
}

class CountState extends State<CountWidget>{

  Future<int> getCount() async {
    await Future.delayed(Duration(milliseconds: 1000));
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      width: 200, height: 200,
      alignment: Alignment.center,
      child: _futureBuilder(),
    );
  }

  Widget _futureBuilder(){
    return FutureBuilder<int>(
      future: getCount(),
      builder: (context, snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.none:
            return Text("None", style: TextStyle(fontSize: 50),);
            break;
          case ConnectionState.waiting:
            return Text("Wating", style: TextStyle(fontSize: 50),);
            break;
          case ConnectionState.active:
            return Text("Active", style: TextStyle(fontSize: 50),);
            break;
          case ConnectionState.done:
            if(snapshot.hasError){
              return Text(snapshot.error.toString(), style: TextStyle(fontSize: 50),);
            }
            else {
              return Text(snapshot.data.toString(), style: TextStyle(fontSize: 50),);
            }
            break;
        }
      },
    );
  }
}
