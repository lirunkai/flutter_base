import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => new _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  bool _switchSelected=true; //维护单选开关状态
  bool _checkboxSelected=true;//维护复选框状态
  TextEditingController _nameController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SwitchListTile(
              title: Text('Switch'),
              value: _switchSelected,//当前状态
              onChanged:(value){
                //重新构建页面  
                setState(() {
                  _switchSelected=value;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Checkbox'),
              value: _checkboxSelected,
              activeColor: Colors.red, //选中时的颜色
              onChanged:(value){
                setState(() {
                  _checkboxSelected=value;
                });
              } ,
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)
              ),
              controller: _nameController,
              onChanged: (v) {
                print("onChanged: $v");
              },
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock)
              ),
            )
          ],
        ),
      )
    );
  }
}