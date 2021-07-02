import 'package:bera_tiles/constants.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class Privacypolicy extends StatefulWidget {
  static String id='privacy_policy';
  @override
  _PrivacypolicyState createState() => _PrivacypolicyState();
}

class _PrivacypolicyState extends State<Privacypolicy> {
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
    );
  }
}
