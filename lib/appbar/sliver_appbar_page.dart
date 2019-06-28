import 'package:flutter/material.dart';

class SliverAppbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildSliverAppBarWidget();
  }

  Widget _buildSliverAppBarWidget() {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                child: SliverSafeArea(
                  top: false,
                  sliver: SliverAppBar(
                    expandedHeight: 200,
                    primary: true,
                    floating: true,
                    pinned: true,
                    snap: false,
                    forceElevated: innerBoxIsScrolled,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text(
                        "Collapsing Toolbar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      background: Image.asset("images/dog.jpeg", fit: BoxFit.cover,),
                    ),
                  ),
                )),
          ];
        },
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Card(
              child: Container(
                child: Text("Sample Text1"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text2"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text3"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text4"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text5"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text6"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text7"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text8"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text9"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text10"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text11"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text12"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text13"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text14"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text15"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text16"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text17"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text18"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
            Card(
              child: Container(
                child: Text("Sample Text19"),
                height: 50,
                width: 200,
                color: Colors.pink[100],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
