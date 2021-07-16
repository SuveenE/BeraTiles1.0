import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactus extends StatefulWidget {
  static String id='contactus';
  @override
  _ContactusState createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
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
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  height: (MediaQuery. of(context). size. height-190)/3,
                  width: MediaQuery. of(context). size. width,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                ),
                Positioned(
                  child: Image.asset(
                    "images/email.png",
                    width:  70.0,
                    height: 80.0,
                    color: Colors.black,
                  ),
                  left: 33.0,
                  top: (MediaQuery. of(context). size. height-190)/6-32,
                ),
                Positioned(
                    left: MediaQuery. of(context). size. width-95.0,
                    top: 29,
                    child:Container(
                      width: 80.0,
                      child: Image.asset('images/yaka2.jpg'),
                    )
                ),
                Positioned(
                  child: Text(
                    'Email us @',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      fontFamily:'Varela',
                    ),
                  ),
                  left: 120.0,
                  top:(MediaQuery. of(context). size. height-190)/6-22,
                ),
                Positioned(
                  child: Text(
                    'beratiles@gmail.com',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      fontFamily:'Montserrat',
                    ),
                  ),
                  left: 120.0,
                  top:(MediaQuery. of(context). size. height-190)/6+13,
                ),
              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                Container(
                  height:  (MediaQuery. of(context). size. height-190)/3,
                  width: MediaQuery. of(context). size. width,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                ),
                Positioned(
                  left: 33.0,
                  top: (MediaQuery. of(context). size. height-190)/6-32,
                  child: InkWell(
                    onTap: (){

                    },
                    child: Image.asset(
                      "images/facebook.png",
                      width:  70.0,
                      height: 80.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                    left: MediaQuery. of(context). size. width-95.0,
                    top: 29,
                    child:Container(
                      width: 80.0,
                      child: Image.asset('images/yaka3.jpg'),
                    )
                ),
                Positioned(
                  child: Text(
                    'Like us',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      fontFamily:'Varela',
                    ),
                  ),
                  left: 125.0,
                  top:(MediaQuery. of(context). size. height-190)/6-22,
                ),
                Positioned(
                  child: Text(
                    'Bera Tiles',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      fontFamily:'Montserrat',
                    ),
                  ),
                  left: 135.0,
                  top:(MediaQuery. of(context). size. height-190)/6+13,
                ),
              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                Container(
                  height:  (MediaQuery. of(context). size. height-190)/3,
                  width: MediaQuery. of(context). size. width,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                ),
                Positioned(
                  left: 23.0,
                  top: (MediaQuery. of(context). size. height-190)/6-32,
                  child: InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width:  100.0,
                      height: 80.0,
                      child: Image.asset(
                        "images/instagram2.png",
                        width:  100.0,
                        height: 120.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: MediaQuery. of(context). size. width-95.0,
                    top: 29,
                    child:Container(
                      width: 80.0,
                      child: Image.asset('images/yaka4.jpg'),
                    )
                ),
                Positioned(
                  child: Text(
                    'Follow us',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      fontFamily:'Varela',
                    ),
                  ),
                  left: 135.0,
                  top:(MediaQuery. of(context). size. height-190)/6-22,
                ),
                Positioned(
                  child: Text(
                    '@beratiles',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      fontFamily:'Montserrat',
                    ),
                  ),
                  left: 150.0,
                  top:(MediaQuery. of(context). size. height-190)/6+10,
                ),
              ],
            ),
          ),
        ],
      ),


    );
  }
}
