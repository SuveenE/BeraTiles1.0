import 'package:flutter/material.dart';

class ReusableContainer2 extends StatelessWidget {
  ReusableContainer2({@required this.colour, this.cardchild});

  final Color colour;
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      height: 158.0,
      width: 85.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}