import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateTimePickerPage extends StatefulWidget {
  @override
  _DateTimePickerPageState createState() => _DateTimePickerPageState();
}

class _DateTimePickerPageState extends State<DateTimePickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("日期、时间组件"),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("2019-07-29"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: (){

            },
          )
        ],
      ),
    );
  }
}
