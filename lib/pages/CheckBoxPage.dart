import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(value: this.flag,
                onChanged: (value) {
                  setState(() {
                    this.flag = value;
                  });
                },
                activeColor: Colors.red,
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(this.flag ? "选中":"未选中")

            ],
          ),
          Divider(),

          CheckboxListTile(
            value: this.flag,
            onChanged: (value){
              setState(() {
                this.flag = value;
              });
            },
            activeColor: Colors.cyan,
            title: Text('标题'),
            subtitle: Text('我是子标题'),
            selected: this.flag,
          )
        ],
      ),
    );
  }
}
