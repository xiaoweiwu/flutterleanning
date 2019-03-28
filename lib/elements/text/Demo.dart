import 'package:flutter/material.dart';

class Demo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new DemoState();
  }
}

class DemoState extends State<Demo>{
  int _count = 0;

  _pressButton(){
    setState(() {
      _count++;

    });
  }
  @override
  Widget build(BuildContext context) {
    Paint p = Paint();
    p.color = Colors.red;
    return new Scaffold(
        appBar: new AppBar(title: new Text("简单控件示例Text")),
        body: Container(
            child: Column(children: [
              Text('我是一个 Text$_count',
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.ltr,
                  maxLines: 2,
                  style: TextStyle(fontSize: 20, background: p)
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: _pressButton,
              )
            ])));
  }

}
