import 'package:flutter/material.dart';
import 'package:bera_tiles/screens/home_screen.dart';
import 'package:bera_tiles/screens/drums.dart';
import 'package:audioplayers/audioplayers.dart';

class Thammattama extends StatefulWidget {
  static String id='thammattama';
  @override
  _ThammattamaState createState() => _ThammattamaState();
}

class _ThammattamaState extends State<Thammattama> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav'); //note1-gataberaya , note2-thammattama
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
                                          colors: [Colors.white,Colors.yellow, ]
                                      )
                                  ),
                                ),
                                Positioned(
                                  child: Text(
                                    'Thammattama',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily:'Varela',
                                        color: kblack
                                    ),
                                  ),
                                  left: 120.0,
                                  top: 22.0,
                                ),
                                Positioned(
                                  left: MediaQuery. of(context). size. width/2-60,
                                  top: (MediaQuery. of(context). size. height-200)/6-30,
                                  child: Hero(
                                    tag: 'thammattama',
                                    child: Container(
                                      width: 120.0,
                                      height: 120.0,
                                      child: Image.asset('decos/thammattama.png',
                                        color: Colors.black,),
                                    ),
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
                                  playSound(13);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height: (MediaQuery. of(context). size. height-200)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 15.0, right:
                                      7, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                          border:Border.all(width: 5,color: Color(0xFFCD1E3B)) ,
                                        borderRadius: BorderRadius.circular(10.0),
                                          gradient: RadialGradient(
                                              colors: [Colors.white,Color(0xFFFF2800) ])
                                      ),
                                    ),
                                    // Positioned(
                                    //   child: Text(
                                    //     'LEFT',
                                    //     style: TextStyle(
                                    //       fontSize: 25.0,
                                    //       fontWeight: FontWeight.bold,
                                    //       fontFamily:'Varela',
                                    //       color: kblack
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
                                  playSound(14);
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
                                          border:Border.all(width: 5,color: Color(0xFFFFFF00)) ,
                                        borderRadius: BorderRadius.circular(10.0),
                                          gradient: RadialGradient(
                                              colors: [Colors.white,Color(0xFFF9A602) ])
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
                                  playSound(15);
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
                                          border:Border.all(width: 5,color: Color(0xFFFFFF00)) ,
                                        borderRadius: BorderRadius.circular(10.0),
                                          gradient: RadialGradient(
                                              colors: [Colors.white,Color(0xFFFDA50F) ])
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
                                  playSound(16);
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
                                          border:Border.all(width: 5,color: Color(0xFFF9A602)) ,
                                        borderRadius: BorderRadius.circular(10.0),
                                          gradient: RadialGradient(
                                              colors: [Colors.white,Color(0xFFFCE205) ])
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
