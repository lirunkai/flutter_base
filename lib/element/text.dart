import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('TextDemo'),
      ),
      body: new TextDetail(),
    );
  }
}

class TextDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Text(
            '测试Shadow',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted
            ),
          ),
        ),
        Container(
          child: Text(
            '测试TextDecotationStyle.dashed',
            style: TextStyle(
              color: Colors.red,
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed
            ),
          ),
        ),
        Container(
          child: Text(
            '测试TextDecotationStyle.dotted',
            style: TextStyle(
              color: Colors.red,
              decoration: TextDecoration.lineThrough,
              decorationStyle: TextDecorationStyle.dotted
            ),
          ),
        ),
        Container(
          child: Text(
            '测试TextDecotationStyle.wavy',
            style: TextStyle(
              color: Colors.red,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted
            ),
          ),
        ),
        Container(
          child: new Text(
            '单个样式文本的时候使用Text, align为right',
            style: TextStyle(
              fontSize: 16,
              color: Colors.red,
            ),
            textWidthBasis: TextWidthBasis.parent,
            textAlign: TextAlign.right,
          ),
        ),
        Container(
          child: new Text(
            '单个样式文本的时候使用Text, align为end, 单个样式文本的时候使用Text, align为end, 单个样式文本的时候使用Text, align为end',
            maxLines: 2,
            style: TextStyle(
              fontSize: 16,
              color: Colors.red
            ),
            textAlign: TextAlign.end,
          ),
        ),
        Container(
          child: new Text(
            '多行文本时, overflow为clip, align为start, 单个样式文本的时候使用Text, align为left, 单个样式文本的时候使用Text, align为left',
            maxLines: 1,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontSize: 16,
              color: Colors.red
            ),
          ),
        ),
        Container(
          child: new Text(
            '多行文本时, overflow为ellipsis, align为start, 单个样式文本的时候使用Text, align为left, 单个样式文本的时候使用Text, align为left',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              color: Colors.red
            ),
          ),
        ),
        Container(
          child: new Text(
            '多行文本时, overflow为fade, align为start, 单个样式文本的时候使用Text, align为left, 单个样式文本的时候使用Text, align为left',
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: TextStyle(
              fontSize: 16,
              color: Colors.red
            ),
          ),
        ),
        Container(
          child: new Text(
            '多行文本时, overflow为visible, align为start, 单个样式文本的时候使用Text, align为left, 单个样式文本的时候使用Text, align为left',
            maxLines: 1,
            overflow: TextOverflow.visible,
            style: TextStyle(
              fontSize: 16,
              color: Colors.red
            ),
          ),
        ),
        Container(
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              text: 'xxxx',
              style: TextStyle(
                fontSize: 14,
                color: Colors.red
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '多',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.green
                  )
                ),
                TextSpan(
                  text: '个',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.red
                  )
                ),
                TextSpan(
                  text: '内',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue
                  )
                ),
                TextSpan(
                  text: '联',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.orange
                  )
                ),
                TextSpan(
                  text: '文',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.green
                  )
                ),
                TextSpan(
                  text: '本',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.orange
                  )
                )
              ]
            )
          ),
        )
      ],
    );
  }
}