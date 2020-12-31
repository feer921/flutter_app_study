import 'package:flutter/material.dart';

class RadioDemoPage extends StatefulWidget {
  @override
  _RadioDemoPageState createState() => _RadioDemoPageState();
}

class _RadioDemoPageState extends State<RadioDemoPage> {
  var radioIndex;
  var chosenIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio demo'),
      ),

      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('男'),
                Radio(
                  value: 1,
                  groupValue: this.radioIndex,
                  onChanged: (value) {
                    setState(() {
                      this.radioIndex = value;
                    });
                  },
                  activeColor: Colors.deepOrange,
                ),
                SizedBox(width: 10,),
                Text('女'),
                Radio(
                    value: 10, groupValue: this.radioIndex, onChanged: (value) {
                  setState(() {
                    print(" value is $value");

                    this.radioIndex = value;
                  });
                })
              ],
            ),
            SizedBox(height: 50),

            Row(
              children: <Widget>[
//                Text(this.radioIndex+""),
                Text('${this.radioIndex}')
              ],
            ),

            Divider(),
            RadioListTile(
              value: "one",
              groupValue: this.chosenIndex,
              onChanged: (value){
                setState(() {
                  this.chosenIndex = value;
                });
              },
              activeColor: Colors.deepPurple,
              title: Text('第一个'),
              subtitle: Text('第一个的子标题'),
              selected: this.chosenIndex == "one",
            ),
            Divider(),
            RadioListTile(
              value: "two",
              groupValue: this.chosenIndex,
              onChanged: (value){
                setState(() {
                  this.chosenIndex = value;
                });
              },
              activeColor: Colors.deepPurple,
              title: Text('第二个'),
              subtitle: Text('第二个的子标题'),
              selected: this.chosenIndex == "two",
            )
          ],
        ),
      ),
    );
  }
}
