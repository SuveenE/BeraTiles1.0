import 'package:flutter/material.dart';
import 'note.dart';

class Tile extends StatelessWidget {
  final double height;
  final NoteState state;
  final VoidCallback onTap;

  const Tile({Key key, this.height, this.state, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: GestureDetector(
        onTapDown: (_) => onTap(),
        child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 6,color:color2) ,
            gradient: RadialGradient(
                colors: [ color1,color])
        ),
        ),
      ),
    );
  }

  Color get color{
    switch (state) {
      case NoteState.ready:
        return Color(0xFFF6B915);
      case NoteState.tapped:
        return Colors.white10;
      case NoteState.missed:
        return Colors.red;
        break;
      default:
        return  Color(0xFFF6B915);
    }
  }
  Color get color1{
    switch (state) {
      case NoteState.ready:
        return Color(0xFFF6E271);
      case NoteState.tapped:
        return Colors.white10;
      case NoteState.missed:
        return Colors.red;
        break;
      default:
        return Color(0xFFF6E271);
    }
  }
  Color get color2{
    switch (state) {
      case NoteState.ready:
        return Color(0xFFF38E09);
      case NoteState.tapped:
        return Colors.black54;
      case NoteState.missed:
        return Color(0xFFB10603);
        break;
      default:
        return Color(0xFFF38E09);
    }
  }
}
