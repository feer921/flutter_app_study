import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _userNameControler = new TextEditingController();
  var _userPw;
  @override
  void initState() {
    super.initState();
    _userNameControler.text = "Feer";

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("用户登录"),

        ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              maxLines: 1,
              maxLength: 6,
              enableInteractiveSelection: true,
              controller: _userNameControler,
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: "请输入用户名",
                border: OutlineInputBorder(),
              ),

              onChanged: (value){
                setState(() {
                  _userNameControler.text = value;
                });
              },
            ),
            SizedBox(height: 10,),
            //密码输入框
            TextField(
              maxLines: 1,
              maxLength: 6,
              controller: null,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "请输入6位数的密码",
                border: OutlineInputBorder(),
              ),
              onChanged: (value){
                this._userPw = value;
              },
            ),
            SizedBox(height: 20,),

            Container(
              width: double.infinity,
              height: 40,

              child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("登录"),
                  onPressed: (){
                      print(_userNameControler.text);
                      print(_userPw);

                    }
              ),
            )
          ],
        ),
      ),
    );
  }
}
