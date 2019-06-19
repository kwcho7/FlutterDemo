import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: _appbarBody(context),
      ),
    );
  }

  Widget _appbarBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        RaisedButton(
          child: Text("CustomScrollView"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => _customScrollViewWidget()));
          },
        ),
        RaisedButton(
          child: Text("NestedScrollView"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => _nestedScrollViewWidget()));
          },
        ),
      ],
    );
  }

  Widget _customScrollViewWidget() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("SliverAppBar"),
          expandedHeight: 200,
          pinned: true,
          actions: <Widget>[
            IconButton(onPressed: (){}, icon: Icon(Icons.message),)
          ],
          flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://cdn.pixabay.com/photo/2015/07/27/19/47/turtle-863336__340.jpg",
                fit: BoxFit.cover,
              )
          ),
          titleSpacing: 0,
        ),
        SliverFixedExtentList(
          itemExtent: 40,
          delegate: SliverChildListDelegate(
              [
                Container(color: Colors.pink[100]),
                Container(color: Colors.pink[200]),
                Container(color: Colors.pink[300]),
                Container(color: Colors.pink[400]),
                Container(color: Colors.pink[500]),
                Container(color: Colors.pink[600]),
                Container(color: Colors.pink[700]),
                Container(color: Colors.pink[800]),
                Container(color: Colors.pink[900]),
                Container(color: Colors.blue[100]),
                Container(color: Colors.blue[200]),
                Container(color: Colors.blue[300]),
                Container(color: Colors.blue[400]),
                Container(color: Colors.blue[500]),
                Container(color: Colors.blue[600]),
                Container(color: Colors.blue[700]),
                Container(color: Colors.blue[800]),
                Container(color: Colors.blue[900]),
              ]
          ),
        )
      ],
    );
  }

  Widget _nestedScrollViewWidget() {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool scrolled){
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              pinned: true,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("FlexibleSpaceBar"),
              ),
            ),
          ];
        },
        body: Material(
            child: Container(
              constraints: BoxConstraints.expand(),
              child: Center(
                child: Text("hello"),
              )
            )
        ),
      ),
    );
  }
}