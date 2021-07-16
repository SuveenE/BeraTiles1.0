import 'package:bera_tiles/screens/berabeats.dart';
import 'package:bera_tiles/single_bera/Rabana.dart';
import 'package:bera_tiles/single_bera/udakkiya.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bera_tiles/cards/reusable_card.dart';
import 'package:bera_tiles/cards/reusable_card2.dart';
import 'drums.dart';
import 'package:bera_tiles/single_bera/gataberaya.dart';
import 'contactus.dart';
import 'package:bera_tiles/constants.dart';
import 'privacypolicy.dart';
import 'package:bera_tiles/single_bera/thabla.dart';
import 'package:bera_tiles/screens/all12.dart';
import 'package:bera_tiles/single_bera/bongo.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:bera_tiles/game/game_home.dart';



class HomeScreen extends StatefulWidget {
  static String id='home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color kwhite =Colors.white;
  Color kblack=Colors.black;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Image.asset(
                  "images/menu.png",
                  width:  28.0,
                  height: 28.0,
                  color: kwhite,
                 ),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            ),
          ],
          backgroundColor: kblack,
          title: Row(
            children: [
              Image.asset(
                "images/logo7.png",
                width:  33.0,
                height: 40.0,
              ),
              SizedBox(width:5.0),
              Text('Bera Tiles',
                style: TextStyle(
                  color: kwhite,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontFamily:'Acme',
                ),
              ),
            ],
          ),
        ),

        endDrawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: kblack,
                ),
                child: Text('Bera Tiles',
                  style: TextStyle(
                    color: kwhite,
                    fontSize: 33.0,
                    fontWeight: FontWeight.bold,
                    fontFamily:'Acme'
                        ,
                  ),),
              ),
              ListTile(
                title: Row(
                  children: [
                    Image.asset(
                      "images/tabal.png",
                      width:  28.0,
                      height: 25.0,
                      color: kblack,
                    ),
                    Text('Bera Beats'),
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, berabeats.id);
                },
              ),
              // ListTile(
              //   title: Row(
              //     children: [
              //       Icon(
              //         Icons.help_outline_sharp,
              //         color: kblack,
              //         size: 28.0,
              //         semanticLabel: 'Text to announce in accessibility modes',
              //       ),
              //       Text('Help'),
              //     ],
              //   ),
              //   onTap: () {
              //     // Update the state of the app
              //     // ...
              //     // Then close the drawer
              //     Navigator.pushNamed(context, help.id);
              //   },
              // ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.contact_page_outlined,
                      color: kblack,
                      size: 28.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    Text('Contact Us'),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, Contactus.id);
                },
              ),
            ],
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
                                  children: [
                                    Container(
                                      height: (MediaQuery. of(context). size. height-210.0)/3,
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
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily:'Varela',
                                          color: kblack
                                        ),
                                      ),
                                      left: 45.0,
                                      top: 22.0,
                                    ),
                                    Positioned(
                                      left: 42.0,
                                      top: (MediaQuery. of(context). size. height-180.0)/8,
                                      child:Hero(
                                        tag: 'thabla',
                                        child: Container(
                                          width: (MediaQuery. of(context). size. width-66)/3-60,
                                          height: 80 ,
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
                                      height: (MediaQuery. of(context). size. height-210.0)/3,
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
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily:'Varela',
                                          color: kblack
                                        ),
                                      ),
                                      left: 37.0,
                                      top: 22.0,
                                    ),
                                    Positioned(
                                      left: 42.0,
                                      top:  (MediaQuery. of(context). size. height-180.0)/8,
                                      child:Hero(
                                        tag: 'udakkiya',
                                        child: Container(
                                          width:  (MediaQuery. of(context). size. width-66)/3-60,
                                          height: 70 ,
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
                                      height: (MediaQuery. of(context). size. height-210.0)/3,
                                      width: MediaQuery. of(context). size. width,
                                      margin: EdgeInsets.only(left: 7.0, right:
                                      15, top: 15.0, bottom: 15.0),
                                      decoration: BoxDecoration(
                                        color: kwhite,
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
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily:'Varela',
                                          color: kblack
                                        ),
                                      ),
                                      left: 37.0,
                                      top: 22.0,
                                    ),
                                    Positioned(
                                      left: 40.0,
                                      top:  (MediaQuery. of(context). size. height-180.0)/8,
                                      child:Hero(
                                        tag: 'rabana',
                                        child: Container(
                                          width:  (MediaQuery. of(context). size. width-66)/3-60,
                                          height: 80 ,
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
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery. of(context). size. width-107.0,
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, Drums.id);
                        },
                        child: Stack(
                          children:[
                            Container(
                              height: 18.0,
                              width: 70.0,
                              margin: EdgeInsets.only(left: 5.0, right:
                              15,top: 2.0, bottom: 10.0 ),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFCC00),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            Positioned(
                              child: Text(
                                'View More',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily:'Montserrat',
                                  color: kblack
                                ),
                              ),
                              left:13.0,
                              top: 4.0,
                            ),
                        ],),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20.0, height: 10.0,),
                      Icon(Icons.gamepad_outlined, color: Colors.yellow),
                      SizedBox(width: 6.0, height: 10.0,),
                      Text(
                        'How fast are you?',
                        style: TextStyle(
                            fontFamily:'Montserrat',
                            color: kwhite,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, Gamehome.id);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: (MediaQuery. of(context). size.height-128.0)/3.5,
                            width: MediaQuery. of(context). size. width,
                            margin: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: kwhite,
                              borderRadius: BorderRadius.circular(10.0),

                            ),
                          ),
                          Positioned(
                            child: Text(
                              'Bera Tiles',
                              style: TextStyle(
                                  fontSize: 42.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily:'Acme',
                                  color: kblack
                              ),
                            ),
                            left: 33.0,
                            top: (MediaQuery. of(context). size.height-128.0)/9,
                          ),
                          Positioned(
                              left: MediaQuery. of(context). size. width-95.0,
                              top: 39,
                              child:Container(
                                width: 80.0,
                                child: Image.asset('images/yaka4.jpg'),
                              )
                          ),
                          Positioned(
                            child: Text(
                              'The Game',
                              style: TextStyle(
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily:'Varela',
                                  color: kblack
                              ),
                            ),
                            left: 33.0,
                            top: (MediaQuery. of(context). size. height-128.0)/9+48,
                          ),
                        ],
                      )
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, berabeats.id);},
                      child: Stack(
                        children: [Container(
                          height: (MediaQuery. of(context). size. height-300)/5.5,
                          width: MediaQuery. of(context). size. width,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Colors.red, Colors.yellow])
                          ),
                        ),
                          Positioned(
                            child: Text(
                              'BERA BEATS   Challenge',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                fontFamily:'Acme',
                              ),
                            ),
                            left: 55.0,
                            top:(MediaQuery. of(context). size. height-300)/10-10,
                          ),
                          Positioned(
                            child: Image.asset(
                              "images/trophy.png",
                              width:  28.0,
                              height: 28.0,
                            ),
                            left: 20.0,
                            top:(MediaQuery. of(context). size. height-300)/10-5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
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
                        'Make your own beat',
                        style: TextStyle(
                            fontFamily:'Montserrat',
                            color: kwhite,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, All12.id);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: (MediaQuery. of(context). size.height-128.0)/3,
                          width: MediaQuery. of(context). size. width,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: kwhite,
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                        Positioned(
                          child: Text(
                            'All in 1',
                            style: TextStyle(
                              fontSize: 42.0,
                              fontWeight: FontWeight.bold,
                              fontFamily:'Acme',
                              color: kblack
                            ),
                          ),
                          left: 33.0,
                          top: (MediaQuery. of(context). size.height-128.0)/8,
                        ),
                        Positioned(
                          left: MediaQuery. of(context). size. width-95.0,
                          top: 39,
                          child:Container(
                            width: 80.0,
                            child: Image.asset('images/yaka2.jpg'),
                          )
                        ),
                        Positioned(
                          child: Text(
                            'Give them a mix',
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              fontFamily:'Varela',
                              color: kblack
                            ),
                          ),
                          left: 33.0,
                          top: (MediaQuery. of(context). size. height-128.0)/8+48,
                        ),
                      ],
                    )
                  ),
                  ],
                ),
              ),
              SizedBox(height: 5.0,),
              Row(
                children: [
                  SizedBox(width: 20.0, height: 10.0,),
                  Image.asset(
                    "images/bongo1.png",
                    width:  28.0,
                    height: 25.0,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 6.0, height: 10.0,),
                  Text(
                    'Wanna party?',
                    style: TextStyle(
                        fontFamily:'Montserrat',
                        color: kwhite,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, Bongo.id);
                        },
                        child: Stack(
                          children: [
                            Container(
                              height: (MediaQuery. of(context). size. height-128.0)/3,
                              width: MediaQuery. of(context). size. width,
                              margin: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: kwhite,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            Positioned(
                              child: Text(
                                'Missing a Bongo?',
                                style: TextStyle(
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily:'Acme',
                                  color: kblack
                                ),
                              ),
                              left: 33.0,
                              top: (MediaQuery. of(context). size.height-128.0)/8,
                            ),
                            Positioned(
                                left: MediaQuery. of(context). size. width-95.0,
                                top: 39,
                                child:Container(

                                  width: 80.0,
                                  child: Image.asset('images/yaka3.jpg'),
                                )
                            ),
                            Positioned(
                              child: Text(
                                'Try this',
                                style: TextStyle(
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily:'Varela',
                                  color: kblack
                                ),
                              ),
                              left: 33.0,
                              top: (MediaQuery. of(context). size.height-128.0)/8+48,
                            ),
                          ],
                        )
                    ),

                  ],
                ),
              ),
            ]),


      ),
    );

  }
}
