import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'drums.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter_sound/flutter_sound.dart';
//
class All12 extends StatefulWidget {
  static String id='all12';
  @override
  _All12State createState() => _All12State();
}

class _All12State extends State<All12> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav'); //note1-gataberaya , note2-thammattama
  }
  Color color1 = Color(0xFFFF1E1E);
  Color color2 = Color(0xFFFF8989);
  Color color3 = Color(0xFFF96300);
  Color color4 = Color(0xFFFFA366);
  Color color5 = Color(0xFFF9C700);
  Color color6 = Color(0xFFFFE066);
  Color kwhite =Colors.white;
  Color kblack=Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: false,
        title: Row(
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
      body: ListView(
          children: [Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Divider(
                    color: Colors.white60,
                    thickness: 1.0,
                  ),
                  SizedBox(height: 1.0,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 20.0, height: 10.0,),
                      Icon(
                        Icons.album_sharp,
                        color: Colors.red,
                        size: 24.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                      SizedBox(width: 6.0, height: 10.0,),
                      Text(
                        'All in 1',
                        style: TextStyle(
                            fontFamily:'Montserrat',
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){
                                  playSound(21);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height: (MediaQuery. of(context). size. height-240)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 15.0, right:
                                      5, top: 5.0, bottom: 5.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        gradient: RadialGradient(
                                          colors: [ Color(0xFFF8DE7E),Color(0xFFF9A602),])
                                      ),
                                    ),
                                    Positioned(
                                      left: 20.0,
                                      top: 20.0,
                                      child: RotatedBox(
                                        quarterTurns: 1,
                                        child: Text(
                                             'Thabla',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontFamily: 'Montserrat'
                                            ),
                                          ),
                                        ),
                                    ),
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){
                                  playSound(22);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height:(MediaQuery. of(context). size. height-240)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 5.0, right:
                                      15, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        gradient: RadialGradient(
                                          colors: [Color(0xFFFFC308),Color(0xFFC21B07), ])
                                      ),
                                    ),
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),Expanded(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){
                                  playSound(5);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height:(MediaQuery. of(context). size. height-240)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 15.0, right:
                                      5, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        gradient: RadialGradient(
                                          colors: [ Color(0xFFFF9867),Color(0xFFFF4545),])
                                      ),
                                    ),
                                    Positioned(
                                      left: 20.0,
                                      top: 20.0,
                                      child: RotatedBox(
                                        quarterTurns: 1,
                                        child: Text(
                                          'Udakkiya',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontFamily: 'Montserrat'
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){
                                  playSound(6);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height:(MediaQuery. of(context). size. height-240)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 5.0, right:
                                      15, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        gradient: RadialGradient(
                                          colors: [Color(0xFFF9B208),Color(0xFFFC5404), ])
                                      ),
                                    ),
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){
                                  playSound(9);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height: (MediaQuery. of(context). size. height-240)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 15.0, right:
                                      5, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                          gradient: RadialGradient(
                                              colors: [ Color(0xFFFADA5E),Color(0xFFFF2400)])
                                      ),
                                    ),
                                    Positioned(
                                      left: 20.0,
                                      top: 20.0,
                                      child: RotatedBox(
                                        quarterTurns: 1,
                                        child: Text(
                                          'Rabana',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontFamily: 'Montserrat'
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){
                                  playSound(11);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height:(MediaQuery. of(context). size. height-240)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 5.0, right:
                                      15, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                          gradient: RadialGradient(
                                              colors: [ Color(0xFFF9F871),Color(0xFFFFD314),])
                                      ),
                                    ),
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),Expanded(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){
                                  playSound(13);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height:(MediaQuery. of(context). size. height-240)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 15.0, right:
                                      5, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                          gradient: RadialGradient(
                                              colors: [Color(0xFFFFD300),Color(0xFFD21F3C)])
                                      ),
                                    ),
                                    Positioned(
                                      left: 20.0,
                                      top: 20.0,
                                      child: RotatedBox(
                                        quarterTurns: 1,
                                        child: Text(
                                          'Thammattama',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontFamily: 'Montserrat'
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){
                                  playSound(14);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height:(MediaQuery. of(context). size. height-240)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 5.0, right:
                                      15, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                          gradient: RadialGradient(
                                              colors: [ Color(0xFFEB8242),Color(0xFFFF0800)])
                                      ),
                                    ),
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){
                                  playSound(17);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height: (MediaQuery. of(context). size. height-240)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 15.0, right:
                                      5, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        // color: color1,
                                        borderRadius: BorderRadius.circular(10.0),
                                          gradient: RadialGradient(
                                              colors: [Color(0xFFFD8C04), Color(0xFF8D021F)])
                                      ),
                                    ),
                                    Positioned(
                                      left: 20.0,
                                      top: 20.0,
                                      child: RotatedBox(
                                        quarterTurns: 1,
                                        child: Text(
                                          'Dawul Beraya',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontFamily: 'Montserrat'
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){
                                  playSound(18);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height:(MediaQuery. of(context). size. height-240)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 5.0, right:
                                      15, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        // color: color2,
                                        borderRadius: BorderRadius.circular(10.0),
                                          gradient: RadialGradient(
                                              colors: [ Color(0xFFFDA50F),Color(0xFFBF0A30),])
                                      ),
                                    ),
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),Expanded(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){
                                  playSound(1);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height:(MediaQuery. of(context). size. height-240)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 15.0, right:
                                      5, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        // color: color2,
                                        borderRadius: BorderRadius.circular(10.0),
                                          gradient: RadialGradient(
                                              colors: [Color(0xFFFCE205),Color(0xFFDAA520), ])
                                      ),
                                    ),
                                    Positioned(
                                      left: 20.0,
                                      top: 20.0,
                                      child: RotatedBox(
                                        quarterTurns: 1,
                                        child: Text(
                                          'Geta Beraya',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontFamily: 'Montserrat'
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){
                                  playSound(2);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height:(MediaQuery. of(context). size. height-240)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 5.0, right:
                                      15, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        // color: color2,
                                        borderRadius: BorderRadius.circular(10.0),
                                          gradient: RadialGradient(
                                              colors: [Color(0xFFFFF600),Color(0xFFD92027), ])
                                      ),
                                    ),
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                  // Row(
                  //   children: [
                  //     SizedBox(width: MediaQuery. of(context). size. width-230),
                  //     _PlaybackButton(),
                  //     SizedBox(width: 70.0,),
                  //     Stack(
                  //       children:[
                  //         Container(
                  //           height: 22.0,
                  //           width: 70.0,
                  //           margin: EdgeInsets.only(left: 5.0, right:
                  //           15,top: 2.0, bottom: 10.0 ),
                  //           decoration: BoxDecoration(
                  //             color: Color(0xFFFFCC00),
                  //             borderRadius: BorderRadius.circular(5.0),
                  //           ),
                  //         ),
                  //         Positioned(
                  //           child: Text(
                  //             'Save',
                  //             style: TextStyle(
                  //                 fontSize: 14.0,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontFamily:'Montserrat',
                  //                 color: kblack
                  //             ),
                  //           ),
                  //           left:22.0,
                  //           top: 2.0,
                  //         ),
                  //       ],),
                  //   ],
                  // )
                ]),
          ),
          ]),
    );
  }
}

// class _PlaybackButton extends StatefulWidget {
//   @override
//   __PlaybackButtonState createState() => __PlaybackButtonState();
// }
//
// class __PlaybackButtonState extends State<_PlaybackButton> {
//   bool _isPlaying = false;
//
//   void _Stop(){}
//
//   void _Play(){}
//
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       iconSize: 40.0,
//       color: Colors.white,
//       icon: _isPlaying ? Icon(Icons.fiber_manual_record) : Icon(Icons.stop),
//       onPressed: (){
//         if (_isPlaying){
//           _Stop();
//         }else{
//           _Play();
//         }
//         setState(() {
//           _isPlaying = !_isPlaying;
//         });
//       },
//     );
//   }
// }
