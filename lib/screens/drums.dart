import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:bera_tiles/single_bera/gataberaya.dart';
import 'package:bera_tiles/single_bera/udakkiya.dart';
import 'package:bera_tiles/single_bera/dawulberaya.dart';
import 'package:bera_tiles/single_bera/thabla.dart';
import 'package:bera_tiles/single_bera/Thammattama.dart';
import 'package:bera_tiles/single_bera/Rabana.dart';

class Drums extends StatefulWidget {
  static String id='drums';
  @override
  _DrumsState createState() => _DrumsState();
}

class _DrumsState extends State<Drums> {
  Color kwhite =Colors.white;
  Color kblack=Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kblack,
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
                  color:kwhite,
                  thickness: 1.0,
                ),
                SizedBox(height: 1.0,),
                Row(
                  children: [
                    SizedBox(width: 20.0, height: 10.0,),
                    Image.asset(
                      "images/tabal.png",
                      width:  28.0,
                      height: 25.0,
                      color: Color(0xFFFFCC00),
                    ),
                    SizedBox(width: 6.0, height: 10.0,),
                    Text(
                      'Drums',
                      style: TextStyle(
                          fontFamily:'Montserrat',
                          color: kwhite,
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
                                Navigator.pushNamed(context, Thabla.id);
                              },
                              child: Stack(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
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
                                          colors: [Colors.white,Colors.red, ]
                                      )
                                    ),
                                  ),
                                  Positioned(
                                    child: Text(
                                      'Thabla',
                                      style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily:'Varela',
                                        color: kblack
                                      ),
                                    ),
                                    left: 80.0,
                                    top: 22.0,
                                  ),
                                  Positioned(
                                    left: 50.0,
                                    top: 70.0,
                                    child: Hero(
                                      tag: 'thabla',
                                      child: Container(
                                        width: (MediaQuery. of(context). size. width-44)/2-60,
                                        height: (MediaQuery. of(context). size. height-200)/3-80 ,
                                        child: Image.asset('decos/thablla.png',
                                          color: Colors.black,),
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
                                Navigator.pushNamed(context, Udakkiya.id);
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    height:(MediaQuery. of(context). size. height-200)/3,
                                    width: MediaQuery. of(context). size. width,
                                    margin: EdgeInsets.only(left: 13.0, right:
                                    9, top: 15.0, bottom: 15.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                        gradient: RadialGradient(
                                            colors: [Colors.white,Colors.orangeAccent, ]
                                        )
                                    ),
                                  ),
                                  Positioned(
                                    child: Text(
                                      'Udakkiya',
                                      style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily:'Varela',
                                      ),
                                    ),
                                    left: 63.0,
                                    top: 22.0,
                                  ),
                                  Positioned(
                                    left: 45.0,
                                    top: 70.0,
                                    child: Hero(
                                      tag: 'udakkiya',
                                      child: Container(
                                        width: (MediaQuery. of(context). size. width-44)/2-70,
                                        height: (MediaQuery. of(context). size. height-200)/3-90 ,
                                        child: Image.asset('decos/udekkiya1.png',
                                          color: Colors.black,),
                                      ),
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
                                Navigator.pushNamed(context, Rabana.id);
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    height: (MediaQuery. of(context). size. height-200)/3,
                                    width: MediaQuery. of(context). size. width,
                                    margin: EdgeInsets.only(left: 15.0, right:
                                    7, top: 5.0, bottom: 15.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                        gradient: RadialGradient(
                                            colors: [Colors.white,Colors.orange, ]
                                        )
                                    ),
                                  ),
                                  Positioned(
                                    child: Text(
                                      'Rabana',
                                      style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily:'Varela',
                                      ),
                                    ),
                                    left: 70.0,
                                    top: 22.0,
                                  ),
                                  Positioned(
                                    left: 50.0,
                                    top: 60.0,
                                    child: Hero(
                                      tag: 'rabana',
                                      child: Container(
                                        width: (MediaQuery. of(context). size. width-44)/2-70,
                                        height: (MediaQuery. of(context). size. height-200)/3-90 ,
                                        child: Image.asset('decos/rabana.png',
                                          color: Colors.black,),
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
                                Navigator.pushNamed(context, Thammattama.id);
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    height: (MediaQuery. of(context). size. height-200)/3,
                                    width: MediaQuery. of(context). size. width,
                                    margin: EdgeInsets.only(left: 13.0, right:
                                    9, top: 5.0, bottom: 15.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
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
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily:'Varela',
                                      ),
                                    ),
                                    left: 39.0,
                                    top: 22.0,
                                  ),
                                  Positioned(
                                    left: 50.0,
                                    top: 70.0,
                                    child: Hero(
                                      tag: 'thammattama',
                                      child: Container(
                                        width: (MediaQuery. of(context). size. width-44)/2-60,
                                        height: (MediaQuery. of(context). size. height-200)/3-80 ,
                                        child: Image.asset('decos/thammattama.png',
                                          color: Colors.black,),
                                      ),
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
                                Navigator.pushNamed(context, Dawulberaya.id);
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    height: (MediaQuery. of(context). size. height-200)/3,
                                    width: MediaQuery. of(context). size. width,
                                    margin: EdgeInsets.only(left: 15.0, right:
                                    7, top: 5.0, bottom: 15.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                        gradient: RadialGradient(
                                            colors: [Colors.white,Color(0xFFECD70D) ]
                                        )
                                    ),
                                  ),
                                  Positioned(
                                    child: Text(
                                      'Dawul Beraya',
                                      style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily:'Varela',
                                      ),
                                    ),
                                    left: 42.0,
                                    top: 22.0,
                                  ),
                                  Positioned(
                                    left: 50.0,
                                    top: 60.0,
                                    child:Hero(
                                      tag: 'dawula',
                                      child: Container(
                                        width: (MediaQuery. of(context). size. width-44)/2-60,
                                        height: (MediaQuery. of(context). size. height-200)/3-80 ,
                                        child: Image.asset('decos/dawula.png',
                                          color: Colors.black,),
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
                                Navigator.pushNamed(context, Getaberaya.id);
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    height: (MediaQuery. of(context). size. height-200)/3,
                                    width: MediaQuery. of(context). size. width,
                                    margin: EdgeInsets.only(left: 13.0, right:
                                    9, top: 5.0, bottom: 15.0),
                                    decoration: BoxDecoration(
                                      color: kwhite,
                                      borderRadius: BorderRadius.circular(10.0),
                                        gradient: RadialGradient(
                                            colors: [Colors.white,Colors.redAccent, ]
                                        )
                                    ),
                                  ),
                                  Positioned(
                                    child: Text(
                                      'Geta Beraya',
                                      style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily:'Varela',
                                        color: kblack
                                      ),
                                    ),
                                    left: 55.0,
                                    top: 22.0,
                                  ),
                                  Positioned(
                                    left: 40.0,
                                    top: 65.0,
                                    child: Hero(
                                      tag: 'getaberaya',
                                      child: Container(
                                        width: (MediaQuery. of(context). size. width-44)/2-40,
                                        height: (MediaQuery. of(context). size. height-200)/3-80 ,
                                        child: Image.asset('decos/getaberaya3.png',
                                          color: Colors.black,),
                                      ),
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
             ]),
          ),
      ]),
    );
  }
}
