import 'package:flutter/material.dart';
import 'package:bera_tiles/screens/home_screen.dart';
import 'package:bera_tiles/screens/drums.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:bera_tiles/screens/home_screen.dart';

class Bongo extends StatefulWidget {
  static String id='bongo';
  @override
  _BongoState createState() => _BongoState();
}

class _BongoState extends State<Bongo> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }


  Color kwhite =Colors.white;
  Color kblack=Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kblack,
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
          icon: Icon(Icons.arrow_back, color: kwhite),
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
                    color: kwhite,
                    thickness: 1.0,
                  ),
                  SizedBox(height: 1.0,),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: (MediaQuery. of(context). size. height-200)/3,
                                  width: MediaQuery. of(context). size. width,
                                  margin: EdgeInsets.only(left: 15.0, right:
                                  7, top: 15.0, bottom: 15.0),
                                  decoration: BoxDecoration(
                                      color: kwhite,
                                      borderRadius: BorderRadius.circular(10.0),
                                      gradient: RadialGradient(
                                          colors: [Colors.white,Color(0xFF6530DD) ]//Color(0xFF82ACFF)
                                      )
                                  ),
                                ),
                                Positioned(
                                  child: Text(
                                    'Bongo',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily:'Varela',
                                        color: kblack
                                    ),
                                  ),
                                  left: (MediaQuery. of(context). size. width-80)/2,
                                  top: 22.0,
                                ),
                                Positioned(
                                  left: MediaQuery. of(context). size. width/2-70,
                                  top: (MediaQuery. of(context). size. height-200)/6-30,
                                  child: Container(
                                    width: 140.0,
                                    height: 120.0,
                                    child: Image.asset('decos/bongo.png',
                                      color: Colors.black,),
                                  ),

                                ),
                              ],
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
                                enableFeedback: false,
                                onTap: (){
                                  playSound(23);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height: (MediaQuery. of(context). size. height-200)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 15.0, right:
                                      7, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        color: kwhite,
                                        borderRadius: BorderRadius.circular(10.0),
                                          border:Border.all(width: 5,color: Color(0xFF50006B)) ,
                                          gradient: RadialGradient(
                                              colors: [Color(0xFFCA82F8),Color(0xFF23049D) ])
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
                                enableFeedback: false,
                                onTap: (){
                                  playSound(24);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height: (MediaQuery. of(context). size. height-200)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 13.0, right:
                                      9, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        color: kwhite,
                                        borderRadius: BorderRadius.circular(10.0),
                                          border:Border.all(width: 5,color: Color(0xFF0000D6)) ,
                                          gradient: RadialGradient(
                                              colors: [Color(0xFF82ACFF),Color(0xFF5C2A9D) ])
                                      ),
                                    ),
                                    // Positioned(
                                    //   child: Text(
                                    //     'RIGHT',
                                    //     style: TextStyle(
                                    //       fontSize: 25.0,
                                    //       fontWeight: FontWeight.bold,
                                    //       fontFamily:'Varela',
                                    //       color: kblack
                                    //     ),
                                    //   ),
                                    //   left: 69.0,
                                    //   top: 22.0,
                                    // ),
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
                                enableFeedback: false,
                                onTap: (){
                                  playSound(25);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height: (MediaQuery. of(context). size. height-200)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 15.0, right:
                                      7, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        color: kwhite,
                                        borderRadius: BorderRadius.circular(10.0),
                                          border:Border.all(width: 5,color: Color(0xFF8E008E)) ,
                                          gradient: RadialGradient(
                                              colors: [Color(0xFFCA82F8),Color(0xFF461B93) ])//5C2A9D
                                      ),
                                    ),
                                    // Positioned(
                                    //   child: Text(
                                    //     'LEFT',
                                    //     style: TextStyle(
                                    //         fontSize: 25.0,
                                    //         fontWeight: FontWeight.bold,
                                    //         fontFamily:'Varela',
                                    //         color: kblack
                                    //     ),
                                    //   ),
                                    //   left: 70.0,
                                    //   top: 22.0,
                                    // ),
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
                                enableFeedback: false,
                                onTap: (){
                                  playSound(26);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height: (MediaQuery. of(context). size. height-200)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 13.0, right:
                                      9, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        color: kwhite,
                                        borderRadius: BorderRadius.circular(10.0),
                                          border:Border.all(width: 5,color: Color(0xFF00006B)) ,
                                          gradient: RadialGradient(
                                              colors: [Color(0xFF82ACFF),Color(0xFF23049D) ])//461B93
                                      ),
                                    ),
                                    // Positioned(
                                    //   child: Text(
                                    //     'RIGHT',
                                    //     style: TextStyle(
                                    //         fontSize: 25.0,
                                    //         fontWeight: FontWeight.bold,
                                    //         fontFamily:'Varela',
                                    //         color: kblack
                                    //     ),
                                    //   ),
                                    //   left: 69.0,
                                    //   top: 22.0,
                                    // ),
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ]),
          ),
          ]),
    );
  }
}
