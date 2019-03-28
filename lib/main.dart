import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/elements/text/Demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<int, bool> checkMap = new Map();

  void _incrementCounter() {
    setState(() {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => new Demo()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView.builder(
//          padding: EdgeInsets.symmetric(
//            vertical:10.0,
//            horizontal:20.0,
//          ),
//          itemExtent: 20.0,
        itemCount: 20,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          if (!checkMap.containsKey(index)) {
            checkMap[index] = false;
          }
          return _getItem(
              "titletitletitltitletitletitletitletitletitletitletitletitletitleetitletitletitletitletitletitletitle$index",
              "subTitle$index",
              Icons.map,
              index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _getItem(String text, String subTitle, IconData icon, int index) {
    Paint background = new Paint();
    background.color = Color(0xFF0000FF);
    return new Container(
      color: index % 2 == 0 ? Colors.green : Colors.deepOrange,
      child: Row(
//        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
//          Center(
//              child: Checkbox(
//                  value: checkMap[index],
//                  onChanged: (change) {
//                    setState(() {
//                      checkMap[index] = change;
//                    });
//                  })),
          Checkbox(
              value: checkMap[index],
              onChanged: (change) {
                setState(() {
                  checkMap[index] = change;
                });
              }),
          Expanded(
              flex: 1,
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(text,
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.red,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFF00FF00),
                            decorationStyle: TextDecorationStyle.solid,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            textBaseline: TextBaseline.alphabetic,
                            letterSpacing: 2,
                            wordSpacing: 10,
//                          height: 2,
                            background: background,
                          )),
                      new RaisedButton.icon(
                        icon: new Icon(Icons.map),
                        label: Text(subTitle),
                        onPressed: () {},
                        onHighlightChanged: (clicked) {},
                      ),
                      new RaisedButton(
                          child: Text(
                            "RaisedButton",
                            style: TextStyle(color: Colors.amber),
                          ),
                          onPressed: () {}),
                      Text.rich(TextSpan(text: "textSpan", children: [
                        TextSpan(
                            text: "http://www.google.com",
                            style: TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                debugPrint("onTaponTap");
//                              print("onTap");
                            Scaffold.of(context).showSnackBar( SnackBar(content:Text("onTap")));
                              })
                      ]))
                    ],
                  ))),
          Checkbox(
              value: checkMap[index],
              onChanged: (change) {
                setState(() {
                  checkMap[index] = change;
                });
              }),
        ],
      ),
    );
  }
}
