import 'package:bera_tiles/constants.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:bera_tiles/game/level1.dart';
import 'package:bera_tiles/game/level2.dart';
import 'package:bera_tiles/game/level3.dart';
import 'package:bera_tiles/game/level4.dart';
import 'package:bera_tiles/game/level5.dart';

class berabeats extends StatefulWidget {
  static String id='berabeats';
  @override
  _berabeatsState createState() => _berabeatsState();
}

class _berabeatsState extends State<berabeats> {
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
            setState(() {
              Navigator.pop(context);
            });
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
                // Row(
                //   children: [
                //     SizedBox(width: 20.0, height: 10.0,),
                //     // Icon(Icons.vic, color: Colors.yellow),
                //     SizedBox(width: 30.0, height: 10.0,),
                //     Text(
                //       'BERA BEATS CHALLENGE',
                //       style: TextStyle(
                //           fontFamily:'Montserrat',
                //           color: kwhite,
                //           fontSize: 25.0,
                //           fontWeight: FontWeight.bold
                //       ),
                //     ),
                //   ],
                // ),
                InkWell(
                    onTap: (){
                      ///Navigator.pushNamed(context, All6.id);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 370.0,
                          width: MediaQuery. of(context). size. width,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: kwhite,
                            borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Colors.purple, Colors.blue])
                          ),
                        ),
                        Positioned(
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:'Montserrat',
                                      color: kblack
                                  ),
                                  children: [
                                    TextSpan(text: "BERA BEATS "),
                                    TextSpan(text: " with", style: TextStyle(fontSize: 20.0,fontStyle: FontStyle.italic,fontFamily: "Varela"),)
                                  ]
                              ),
                            ),
                          ),
                          left: 33.0,
                          top: 32.0,
                        ),
                        Positioned(
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:'Montserrat',
                                      color: kblack
                                  ),
                                  children: [
                                    TextSpan(text: "Bakelicious by Sanj"),
                                  ]
                              ),
                            ),
                          ),
                          left: 33.0,
                          top: 72.0,
                        ),
                        Positioned(
                            left: MediaQuery. of(context). size. width-105.0,
                            top: 22,
                            child:Container(
                              width: 80.0,
                              child: Image.asset('images/cake.jpg'),
                            )
                        ),
                        Positioned(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily:'Montserrat',
                                  color: kblack
                              ),
                              children: [
                                TextSpan(text: "- Finish all 5 levels & you'll receive"),
                              ]
                            ),
                          ),
                          left: 33.0,
                          top: 192.0,
                        ),
                        Positioned(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:'Montserrat',
                                    color: kblack
                                ),
                                children: [
                                  TextSpan(text: "  5 clues. Bind them together &"),
                                ]
                            ),
                          ),
                          left: 33.0,
                          top: 222.0,
                        ),
                        Positioned(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:'Montserrat',
                                    color: kblack
                                ),
                                children: [
                                  TextSpan(text: "  DM to "),
                                  TextSpan(text: "@beratiles", style: TextStyle(fontSize: 16.0,fontStyle: FontStyle.italic,fontFamily: "Varela"),),
                                  TextSpan(text: " on Instagram "),
                                ]
                            ),
                          ),
                          left: 33.0,
                          top: 252.0,
                        ),
                        Positioned(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:'Montserrat',
                                    color: kblack
                                ),
                                children: [
                                  TextSpan(text: "-To enter the contest follow "),
                                ]
                            ),
                          ),
                          left: 33.0,
                          top: 132.0,
                        ),
                        Positioned(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:'Montserrat',
                                    color: kblack
                                ),
                                children: [
                                  TextSpan(text: " @beratiles", style: TextStyle(fontSize: 16.0,fontStyle: FontStyle.italic,fontFamily: "Varela"),),
                                  TextSpan(text: " & "),
                                  TextSpan(text: "@bakelicious_by_sanj", style: TextStyle(fontSize: 16.0,fontStyle: FontStyle.italic,fontFamily: "Varela"),)
                                ]
                            ),
                          ),
                          left: 33.0,
                          top: 162.0,
                        ),
                        Positioned(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:'Montserrat',
                                    color: kblack
                                ),
                                children: [
                                  TextSpan(text: "- 3 lucky winners will win prizes"),
                                ]
                            ),
                          ),
                          left: 33.0,
                          top: 286.0,
                        ),
                        Positioned(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:'Montserrat',
                                    color: kblack
                                ),
                                children: [
                                  TextSpan(text: "- only valid till July 26th"),
                                ]
                            ),
                          ),
                          left: 33.0,
                          top: 316.0,
                        ),
                        Positioned(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:'Montserrat',
                                    color: kblack
                                ),
                                children: [
                                  TextSpan(text: "- for more details check our Instagram"),
                                ]
                            ),
                          ),
                          left: 33.0,
                          top: 346.0,
                        ),
                      ],
                    )
                ),
                InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Game3.id);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 90.0,
                          width: MediaQuery. of(context). size. width,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: kwhite,
                            borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color(0xFFD21F3C), Colors.yellow])

                          ),
                        ),
                        Positioned(
                          child: Text(
                            'LEVEL 1',
                            style: TextStyle(
                                fontSize: 38.0,
                                fontWeight: FontWeight.bold,
                                fontFamily:'Varela',
                                color: kblack
                            ),
                          ),
                          left: 33.0,
                          top: 37.0,
                        ),
                        // Positioned(
                        //     left: MediaQuery. of(context). size. width-95.0,
                        //     top: 29,
                        //     child:Container(
                        //       width: 80.0,
                        //       child: Image.asset('images/yaka2.jpg'),
                        //     )
                        // ),

                      ],
                    )
                ),
                InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Game4.id);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 90.0,
                          width: MediaQuery. of(context). size. width,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: kwhite,
                            borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color(0xFFD21F3C), Colors.yellow])

                          ),
                        ),
                        Positioned(
                          child: Text(
                            'LEVEL 2',
                            style: TextStyle(
                                fontSize: 38.0,
                                fontWeight: FontWeight.bold,
                                fontFamily:'Varela',
                                color: kblack
                            ),
                          ),
                          left: 33.0,
                          top: 37.0,
                        ),
                        // Positioned(
                        //     left: MediaQuery. of(context). size. width-95.0,
                        //     top: 29,
                        //     child:Container(
                        //       width: 80.0,
                        //       child: Image.asset('images/yaka2.jpg'),
                        //     )
                        // ),

                      ],
                    )
                ),
                InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Game5.id);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 90.0,
                          width: MediaQuery. of(context). size. width,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: kwhite,
                            borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color(0xFFD21F3C), Colors.yellow])

                          ),
                        ),
                        Positioned(
                          child: Text(
                            'LEVEL 3',
                            style: TextStyle(
                                fontSize: 38.0,
                                fontWeight: FontWeight.bold,
                                fontFamily:'Varela',
                                color: kblack
                            ),
                          ),
                          left: 33.0,
                          top: 37.0,
                        ),
                        // Positioned(
                        //     left: MediaQuery. of(context). size. width-95.0,
                        //     top: 29,
                        //     child:Container(
                        //       width: 80.0,
                        //       child: Image.asset('images/yaka2.jpg'),
                        //     )
                        // ),

                      ],
                    )
                ),
                InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Game6.id);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 90.0,
                          width: MediaQuery. of(context). size. width,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: kwhite,
                            borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color(0xFFD21F3C), Colors.yellow])

                          ),
                        ),
                        Positioned(
                          child: Text(
                            'LEVEL 4',
                            style: TextStyle(
                                fontSize: 38.0,
                                fontWeight: FontWeight.bold,
                                fontFamily:'Varela',
                                color: kblack
                            ),
                          ),
                          left: 33.0,
                          top: 37.0,
                        ),
                        // Positioned(
                        //     left: MediaQuery. of(context). size. width-95.0,
                        //     top: 29,
                        //     child:Container(
                        //       width: 80.0,
                        //       child: Image.asset('images/yaka2.jpg'),
                        //     )
                        // ),

                      ],
                    )
                ),
                InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Game7.id);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 90.0,
                          width: MediaQuery. of(context). size. width,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: kwhite,
                            borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color(0xFFD21F3C), Colors.yellow])

                          ),
                        ),
                        Positioned(
                          child: Text(
                            'LEVEL 5',
                            style: TextStyle(
                                fontSize: 38.0,
                                fontWeight: FontWeight.bold,
                                fontFamily:'Varela',
                                color: kblack
                            ),
                          ),
                          left: 33.0,
                          top: 37.0,
                        ),
                        // Positioned(
                        //     left: MediaQuery. of(context). size. width-95.0,
                        //     top: 29,
                        //     child:Container(
                        //       width: 80.0,
                        //       child: Image.asset('images/yaka2.jpg'),
                        //     )
                        // ),

                      ],
                    )
                ),

              ],
            ),
          ),
          ]),
    );
  }
}
