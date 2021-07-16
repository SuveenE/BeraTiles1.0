import 'package:flutter/material.dart';
import 'note.dart';
import 'package:audioplayers/audioplayers.dart';
import 'tile.dart';
import 'line_divider.dart';
import 'line.dart';
import 'song_provider2.dart';
import 'package:path_provider/path_provider.dart';



class Game4 extends StatefulWidget {
  static String id='game4';
  @override
  _Game4State createState() => _Game4State();
}

class _Game4State extends State<Game4> with SingleTickerProviderStateMixin, WidgetsBindingObserver {

  AudioCache player =new AudioCache() ;
  AudioCache player1 ;
  AudioPlayer advancedPlayer = new AudioPlayer();
  List<Note> notes = initNotes();
  AnimationController animationController;
  int currentNoteIndex = 0;
  int points = 0;
  bool hasStarted = false;
  bool isPlaying = true;

  @override
  void initState() {
    player1= AudioCache(fixedPlayer: advancedPlayer);
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 330));
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
          _showFinishDialog1();
        } else {
          setState(() => ++currentNoteIndex);
          animationController.forward(from: 0);
        }
      }
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {

    super.didChangeAppLifecycleState(state);
    print('AppLifecycleState: $state');
    if(state==AppLifecycleState.paused){
      advancedPlayer.stop();
      animationController.reverse().then((_) => _showFinishDialog());
    }
  }


  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Navigator.pop(context);
        advancedPlayer.stop();
      },
      child: Scaffold(
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
              advancedPlayer.stop();
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
    advancedPlayer.stop();
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
    advancedPlayer.stop();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Congratulations! Expect more tiles in level 3 :) The 2nd clue is 'a'. Don't forget to write it down somewhere",
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
      _BackgroundMusic();
      _playNote(note);
      setState(() {
        note.state = NoteState.tapped;
        ++points;
      });
    }
  }

  void _BackgroundMusic() {
    if (points == 1) {
      player1.play('Bera-tiles_1.mp3');
    }
  }

  _drawLine(int lineNumber) {
    return Expanded(
      child: Line1(
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
        player.play('note32.wav');
        return;
      case 1:
        player.play('note31.wav');
        return;
      case 2:
        player.play('note30.wav');
        return;
      case 3:
        player.play('note29.wav');
        return;
    }
  }
}