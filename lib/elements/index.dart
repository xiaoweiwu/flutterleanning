import 'package:flutter/material.dart';

class Demo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Paint p = Paint();
    p.color = Colors.red;
    return Text(
        "我是一个 Text",
        textAlign: TextAlign.right,
        textDirection: TextDirection.ltr,
        maxLines: 2,
        style: TextStyle(fontSize: 20,background: p));
  }


}