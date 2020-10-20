import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class CardSum extends StatefulWidget {
  Color myColor;
  final Function changeParentColor;
  final Function changeMyColor;

  CardSum(this.changeParentColor, this.changeMyColor,
      {this.myColor = Colors.red});
  @override
  _CardSumState createState() => _CardSumState();
}

class _CardSumState extends State<CardSum> {
  @override
  Widget build(BuildContext context) {
    Color insideColor = widget.myColor;
    return Card(
      color: insideColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      child: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              onPressed: widget.changeParentColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              textColor: Colors.white,
              color: Colors.purple[800],
              padding: const EdgeInsets.all(0.0),
              child: Text("Parent Color"),
            ),
            RaisedButton(
              onPressed: widget.changeMyColor,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.purple[800],
              padding: const EdgeInsets.all(0.0),
              child: Text("My color"),
            ),
            // RaisedButton(
            //   onPressed: widget.subParentValue,
            //   textColor: Colors.white,
            //   color: Colors.yellow[800],
            //   padding: const EdgeInsets.all(0.0),
            //   child: Text("-- Pai"),
            // ),
          ],
        ),
      ),
    );
  }
}
