import 'package:flutter/material.dart';
import 'note.dart';
import 'tile.dart';

class Line1 extends AnimatedWidget {
  final int lineNumber;
  final List<Note> currentNotes;
  final Function(Note) onTileTap;


  const Line1(
      {Key key,
        this.currentNotes,
        this.onTileTap,
        this.lineNumber,
        Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    Animation<double> animation = super.listenable;
    double height = MediaQuery.of(context).size.height-100;
    double tileHeight = height / 4;

    List<Note> particularLine =
    currentNotes.where((note) => note.line == lineNumber).toList();

    List<Widget> tiles = particularLine.map((note) {
      //specify note distance from top
      int index = currentNotes.indexOf(note);
      double offset = (3 - index + animation.value) * tileHeight;

      return Transform.translate(
        offset: Offset(0, offset),
        child: Tile(
          height: tileHeight,
          state: note.state,
          onTap: () => onTileTap(note),
        ),
      );
    }).toList();

    return SizedBox.expand(
      child: Stack(
        children: tiles,
      ),
    );
  }
}
