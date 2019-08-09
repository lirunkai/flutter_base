import 'package:flutter/material.dart';
import 'package:flutter_demo/model/user.dart';

class UserProvider extends InheritedWidget {
    final Widget child;
    final User user;
    UserProvider({this.user, this.child}):super(child:child);

    @override
    bool updateShouldNotify(InheritedWidget oldWidget){
      return true;
    }
}

class UserContainer extends StatefulWidget {
  final User user;
  final Widget child;

  UserContainer({Key key, this.user, this.child}):super(key:key);

  @override
  _UserContainerState createState() => new _UserContainerState();

  static UserProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(UserProvider);
  }
}

class _UserContainerState extends State<UserContainer> {
  @override
  Widget build(BuildContext context) {
    return new UserProvider(user: widget.user, child: widget.child);
  }
}