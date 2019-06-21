import 'package:flutter/material.dart';

class ListViewItemsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListViewItemsState();
  }
}

class ListViewItemsState extends State<ListViewItemsPage> {
  List<Item> _itemList = [
    HeaderItem()..title = "HeaderItem",
    PersonItem()
      ..name = "Kim~~~"
      ..age = 19,
    PersonItem()
      ..name = "Cho~~"
      ..age = 10,
    PersonItem()
      ..name = "Lee~~"
      ..age = 9,
    PersonItem()
      ..name = "Park~~"
      ..age = 19,
    HeaderItem()..title = "HeaderItem 2",
    PersonItem()
      ..name = "Kim 1~~~"
      ..age = 119,
    PersonItem()
      ..name = "Cho 2~~"
      ..age = 210,
    PersonItem()
      ..name = "Lee 3~~"
      ..age = 39,
    PersonItem()
      ..name = "Park 4~~"
      ..age = 419,
    HeaderItem()..title = "HeaderItem 3",
    PersonItem()
      ..name = "Kim 5~~~"
      ..age = 519,
    PersonItem()
      ..name = "Cho 6~~"
      ..age = 610,
    PersonItem()
      ..name = "Lee 7~~"
      ..age = 79,
    PersonItem()
      ..name = "Park 8~~"
      ..age = 819,
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ListViewItems"),
        ),
        body: ListViewWidget(
          itemList: _itemList,
        ),
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key key, this.itemList}) : super(key: key);

  final List<Item> itemList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        if (itemList[index] is PersonItem) {
          return PersonWidget(
            personItem: itemList[index],
          );
        } else {
          return HeaderWidget(
            headerItem: itemList[index],
          );
        }
      },
      itemCount: itemList.length,
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key key, this.headerItem}) : super(key: key);

  final HeaderItem headerItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            headerItem.title,
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
        ),
      ),
    );
  }
}

class PersonWidget extends StatelessWidget {
  const PersonWidget({Key key, this.personItem}) : super(key: key);

  final PersonItem personItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Name: " + personItem.name),
                  Text("Age: " + personItem.age.toString()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Item {
  String description;
}

class PersonItem extends Item {
  int age = 0;
  String name = "name";
}

class HeaderItem extends Item {
  String title = "title2";
}
