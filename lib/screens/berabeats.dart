import 'package:bera_tiles/constants.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

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
                InkWell(
                    onTap: (){
                      ///Navigator.pushNamed(context, All6.id);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 158.0,
                          width: MediaQuery. of(context). size. width,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: kwhite,
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                        ),
                        Positioned(
                          child: Text(
                            'Bera Beats',
                            style: TextStyle(
                                fontSize: 42.0,
                                fontWeight: FontWeight.bold,
                                fontFamily:'Varela',
                                color: kblack
                            ),
                          ),
                          left: 33.0,
                          top: 52.0,
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
                            'Coming Soon....',
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                fontFamily:'Varela',
                                color: kblack
                            ),
                          ),
                          left: 33.0,
                          top: 102.0,
                        ),
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
