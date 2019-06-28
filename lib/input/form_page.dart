import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TextFieldFormState();
  }
}

class TextFieldFormState extends State<TextFieldPage> {

  var controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Form"),
      ),
      body: ListView(
        children: <Widget>[
          _buildTextFieldCardWidget(context),
          /// 특정 TextFormField 가 모두 만족할때만 결과를 확인할수 있다.
          _buildFormTextFieldWidget(context),
        ],
      ),
    );
  }

  Widget _buildTextFieldCardWidget(BuildContext context){
    return Card(
      margin: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(18),
            child: Text("TextField"),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 18),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Use TextField ",
                ),
                keyboardType: TextInputType.text,
                controller: controller,
                onChanged: (value){
                  setState(() {});
                },
              ),
            ),
          ),
          Expanded(
            child: Text(controller.text),
          )
        ],
      ),
    );
  }

  final formKey = GlobalKey<FormState>();
  String formResult = "EMPTY";

  Widget _buildFormTextFieldWidget(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Form(
        key: formKey,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(18),
              child: Text("TextFormField"),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 18),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Use TextField ",
                      ),
                      validator: (value){
                        if(value.isEmpty){
                          return "Enter some text";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 18),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Use TextField ",
                      ),
                      validator: (value){
                        if(value.isEmpty){
                          return "Enter some text";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton(
              child: Text(formResult),
              onPressed: () {
                if(formKey.currentState.validate()){
                  formKey.currentState.save();
                  setState(() {
                    formResult = "Done";
                  });
                }
                else {
                  setState(() {
                    formResult = "EMPTY";
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}