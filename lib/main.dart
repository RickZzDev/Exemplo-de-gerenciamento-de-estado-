import 'dart:math';

import 'package:exp_stat/components/card_sum.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color randomColor = Colors.grey;
  Color sonsColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  Color colorFirstSon = Colors.black;
  Color colorSecondSon = Colors.white;

  void changeMyColor() {
    setState(() {
      randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  void changeFirstSon() {
    setState(() {
      colorFirstSon =
          Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  void changeSecondSon() {
    setState(() {
      colorSecondSon =
          Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  void changeSonsColors() {
    setState(() {
      sonsColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: randomColor,
                elevation: 4,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          // RaisedButton(
                          //   onPressed: sumValue,
                          //   textColor: Colors.white,
                          //   color: Colors.blue,
                          //   padding: const EdgeInsets.all(0.0),
                          //   child: Text("+1"),
                          // ),

                          RaisedButton(
                            onPressed: changeMyColor,
                            textColor: Colors.white,
                            color: Colors.purple[800],
                            padding: const EdgeInsets.all(0.0),
                            child: Text("My color"),
                          ),
                          RaisedButton(
                            onPressed: () {
                              changeFirstSon();
                              changeSecondSon();
                            },
                            textColor: Colors.white,
                            color: Colors.purple[800],
                            padding: const EdgeInsets.all(0.0),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text("Change Sons Colors"),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {
                              changeFirstSon();
                            },
                            textColor: Colors.white,
                            color: Colors.purple[800],
                            padding: const EdgeInsets.all(0.0),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text("Change First"),
                            ),
                          ),
                          RaisedButton(
                            onPressed: () {
                              changeSecondSon();
                            },
                            textColor: Colors.white,
                            color: Colors.purple[800],
                            padding: const EdgeInsets.all(0.0),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text("Change second son"),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CardSum(
                            changeMyColor,
                            changeFirstSon,
                            myColor: colorFirstSon,
                          ),
                          CardSum(
                            changeMyColor,
                            changeSecondSon,
                            myColor: colorSecondSon,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
