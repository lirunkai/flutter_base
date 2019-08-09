import 'package:flutter/material.dart';
import 'package:flutter_demo/style/theme.dart' as theme;

class SignInPage extends StatefulWidget{
  @override
  _SignInPageState createState() => new _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  FocusNode emailFocusNode = new FocusNode();
  FocusNode passwordFocusNode = new FocusNode();

  FocusScopeNode focusScopeNode = new FocusScopeNode();

  GlobalKey<FormState> _SignInFormKey = new GlobalKey();

  bool isShowPassWord = false;
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(top: 23),
      child: new Stack(
        alignment: Alignment.center,
        children: <Widget>[
          new Column(
            children: <Widget>[
              buildSignInForm(),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: new Text("Forgot Password?",
                style: new TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.underline
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(height: 1,
                      width: 100,
                      decoration: BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [ Colors.white10,
                              Colors.white,
                              ])
                      ),
                    ),
                    new Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: new Text("Or", style: new TextStyle(
                          fontSize: 16, color: Colors.white),),),
                    new Container(height: 1,
                      width: 100,
                      decoration: BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [ Colors.white,
                              Colors.white10,
                              ])
                      ),
                    ),
                  ],
                ),
              ),
              new Positioned(child: buildSignInButton(), top: 170,)
            ],
          )
        ],
      ),
    );
  }

  // 控制密码的展示
  void showPassWord(){
    setState((){
      isShowPassWord = !isShowPassWord;
    });
  }

  // 创建登录页面的Widget
  Widget buildSignInForm(){
    return new Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      width: 300,
      height: 190,
      child: new Form(
        key: _SignInFormKey,
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: new Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
                child: new TextFormField(
                  focusNode: emailFocusNode,
                  onEditingComplete: () {
                    if(focusScopeNode == null) {
                      focusScopeNode = FocusScope.of(context);
                    }
                    focusScopeNode.requestFocus(passwordFocusNode);
                  },
                  decoration: new InputDecoration(
                    icon: new Icon(Icons.email, color: Colors.black),
                    hintText: 'Email Address',
                    border: InputBorder.none
                  ),
                  style: new TextStyle(fontSize: 16, color: Colors.black),
                  validator: (value) {
                    if(value.isEmpty) {
                      return 'Email can not empty';
                    }
                  },
                  onSaved: (value){

                  },
                ),
              ),
            ),
            new Container(
              height: 1,
              width: 250,
              color: Colors.grey[400],
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                child: new TextFormField(
                  focusNode: passwordFocusNode,
                  decoration: new InputDecoration(
                    icon: new Icon(Icons.lock, color: Colors.black),
                    hintText: 'Password',
                    border: InputBorder.none,
                    suffixIcon: new IconButton(
                      icon: new Icon(Icons.remove_red_eye, color: Colors.black),
                      onPressed: showPassWord,
                    )
                  ),
                  obscureText: !isShowPassWord,
                  style: new TextStyle(fontSize: 16, color: Colors.black),
                  validator: (value) {
                    if(value == null || value.isEmpty || value.length < 6) {
                      return "password length must longer than 6";
                    }
                  },
                  onSaved: (value){},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // 登录页面按钮
  Widget buildSignInButton(){
    return new GestureDetector(
      child: new Container(
        padding: EdgeInsets.only(left: 42, right: 42, top: 10, bottom: 10),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          gradient: theme.Theme.primaryGradient
        ),
        child: new Text("LOGIN", style: new TextStyle(fontSize: 25, color: Colors.white)),
      ),
      onTap: (){
        if(_SignInFormKey.currentState.validate()){
          // 输入都被验证沟通过的话 进行登录操作
          Scaffold.of(context).showSnackBar(
            new SnackBar(content: new Text('执行登录操作'));
          );
          _SignInFormKey.currentState.save()
        }

      },
    );
  }
}