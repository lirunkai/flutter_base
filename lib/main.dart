import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: 'new Flutter world',
  home: new ImageDemo()
));

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Center(
      child: new Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1565663718536&di=cbee7c571e162e2c2ffe451fda139345&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn15%2F240%2Fw640h400%2F20180527%2Faa23-hcaqueu9548335.jpg',
      fit: BoxFit.fitWidth,),
    );
  }
}
