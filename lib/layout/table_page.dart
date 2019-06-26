import 'package:flutter/material.dart';

/// 여러가지 크기의 데이터를 표현할때 사용한다.
class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Page"),
      ),
      body: _scrollWrap(
          _tableBodyWidget(context),
      ),
    );
  }

  Widget _scrollWrap(Widget child){
    return SingleChildScrollView(
      child: child,
    );
  }

  Widget _tableBodyWidget(BuildContext context){
    return Table(
      columnWidths: {
        0: FractionColumnWidth(0.5),
      },
      defaultColumnWidth: FractionColumnWidth(0.16666666),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          children: [
            Container(
              color: Colors.yellow,
              child: Text("11"),
            ),
            Container(
              color: Colors.red,
              child: Text("22"),
            ),
            Container(
              color: Colors.blue,
              child: Text("33"),
            ),
            Container(
              color: Colors.pink,
              child: Text("3333333333333"),
            ),
          ]
        ),
        TableRow(
            children: [
              Container(
                height: 90,
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                height: 50,
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                height: 90,
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                height: 50,
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                height: 90,
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                height: 50,
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                height: 90,
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                height: 50,
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                height: 90,
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                height: 50,
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                height: 90,
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                height: 50,
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                height: 90,
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                height: 50,
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                height: 90,
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                height: 50,
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                height: 90,
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                height: 50,
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                height: 90,
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
        TableRow(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("11"),
              ),
              Container(
                height: 50,
                color: Colors.red,
                child: Text("22"),
              ),
              Container(
                color: Colors.blue,
                child: Text("33"),
              ),
              Container(
                color: Colors.blue,
                child: Text("3333333333333"),
              ),
            ]
        ),
      ],
    );
  }
}