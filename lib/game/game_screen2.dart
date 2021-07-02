import 'package:flutter/material.dart';
import 'note.dart';
import 'package:audioplayers/audioplayers.dart';
import 'tile.dart';
import 'line_divider.dart';
import 'line.dart';
import 'song_provider.dart';



class Game2 extends StatefulWidget {
  static String id='game2';
  @override
  _Game2State createState() => _Game2State();
}

class _Game2State extends State<Game2> with SingleTickerProviderStateMixin {

  AudioCache player = new AudioCache();
  List<Note> notes = initNotes();
  AnimationController animationController;
  int currentNoteIndex = 0;
  int points = 0;
  bool hasStarted = false;
  bool isPlaying = true;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 220));
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed && isPlaying) {
        if (notes[currentNoteIndex].state != NoteState.tapped) {
          //game over
          setState(() {
            isPlaying = false;
            notes[currentNoteIndex].state = NoteState.missed;
          });
          animationController.reverse().then((_) => _showFinishDialog());
        } else if (currentNoteIndex == notes.length - 5) {
          //song finished
          _showFinishDialog();
        } else {
          setState(() => ++currentNoteIndex);
          animationController.forward(from: 0);
        }
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: false,
        title:  Row(
          children: [
            SizedBox(width: MediaQuery. of(context). size. width-245.7),
            Image.asset(
              "images/logo7.png",
              width:  33.0,
              height: 40.0,
            ),
            SizedBox(width:5.0),
            Text('Bera Tiles',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                fontFamily:'Acme',
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: (){
            Navigator.pop(context);
          },
        ),

      ),
      body: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          // Image.asset(
          //   'images/background.jpg',
          //   fit:BoxFit.cover,
          // ),
          Row(
            children: <Widget>[
              _drawLine(0),
              // LineDivider(),
              _drawLine(1),
              // LineDivider(),
              _drawLine(2),
              // LineDivider(),
              _drawLine(3),
            ],
          ),
          _drawPoints(),
        ],
      ),
    );
  }

  void _restart() {
    setState(() {
      hasStarted = false;
      isPlaying = true;
      notes = initNotes();
      points = 0;
      currentNoteIndex = 0;
    });
    animationController.reset();
  }

  void _showFinishDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Score: $points",
            style: TextStyle(
              fontFamily: 'Montserrat',
            ),),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("RESTART",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ],
        );
      },
    ).then((_) => _restart());
  }
  void _showFinishDialog1() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Congratulations! You are a LEGEND",
            style: TextStyle(
              fontFamily: 'Montserrat',
            ),),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("RESTART",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ],
        );
      },
    ).then((_) => _restart());
  }

  void _onTap(Note note) {
    bool areAllPreviousTapped = notes
        .sublist(0, note.orderNumber)
        .every((n) => n.state == NoteState.tapped);
    print(areAllPreviousTapped);
    if (areAllPreviousTapped) {
      if (!hasStarted) {
        setState(() => hasStarted = true);
        animationController.forward();
      }
      _playNote(note);
      setState(() {
        note.state = NoteState.tapped;
        ++points;
      });
    }
  }

  _drawLine(int lineNumber) {
    return Expanded(
      child: Line(
        lineNumber: lineNumber,
        currentNotes: notes.sublist(currentNoteIndex, currentNoteIndex + 5),
        onTileTap: _onTap,
        animation: animationController,
      ),
    );
  }

  _drawPoints() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Text(
          "$points",
          style: TextStyle(color: Colors.white, fontSize: 60,
              fontFamily: 'Montserrat'),
        ),
      ),
    );
  }

  _playNote(Note note) {
    switch (note.line) {
      case 0:
        player.play('note22.wav');
        return;
      case 1:
        player.play('note90.wav');
        return;
      case 2:
        player.play('note91.wav');
        return;
      case 3:
        player.play('note92.wav');
        return;
    }
  }
}