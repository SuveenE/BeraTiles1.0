import 'package:bera_tiles/screens/berabeats.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'game_screen.dart';
import 'game_screen1.dart';
import 'game_screen2.dart';
import 'ad_state.dart';
import 'package:audioplayers/audioplayers.dart';

class Gamehome extends StatefulWidget {
  static String id='gamehome';
  @override
  _GamehomeState createState() => _GamehomeState();
}

class _GamehomeState extends State<Gamehome> {
  AudioCache player =new AudioCache() ;
  AudioCache player1 ;
  AudioPlayer advancedPlayer = new AudioPlayer();
  // BannerAd banner;

  @override void didChangeDependencies() {
    player1= AudioCache(fixedPlayer: advancedPlayer);
    advancedPlayer.stop();
    super.didChangeDependencies();
    // final adState= Provider.of<AdState>(context);
    // adState.initialization.then((status){
    //   setState(() {
    //     banner = BannerAd(
    //         adUnitId: "ca-app-pub-6659979212727106/6714834311",
    //         size: AdSize.banner,
    //         request: AdRequest(),
    //       listener: adState.adListener,
    //     )..load();
    //   });
    // });
  }

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
            child: InkWell(
              onTap: () {
                  Navigator.pushNamed(context, Game.id);},
              child: Stack(
                children: [
                  Container(
                      height: (MediaQuery. of(context). size. height-230)/3,
                      width: MediaQuery. of(context). size. width,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),

                      ),
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
                      'EASY',
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        fontFamily:'Acme',
                      ),
                    ),
                    left: 120.0,
                    top:(MediaQuery. of(context). size. height-230)/6-10,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {
                      Navigator.pushNamed(context, Game1.id);},
              child: Stack(
                children: [
                  Container(
                      height:  (MediaQuery. of(context). size. height-230)/3,
                      width: MediaQuery. of(context). size. width,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),

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
                      'MEDIUM',
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        fontFamily:'Acme',
                      ),
                    ),
                    left: 120.0,
                    top:(MediaQuery. of(context). size. height-230)/6-10,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, Game2.id);},
              child: Stack(
                children: [
                  Container(
                      height:  (MediaQuery. of(context). size. height-230)/3,
                      width: MediaQuery. of(context). size. width,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),

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
                      'HARD',
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        fontFamily:'Acme',
                      ),
                    ),
                    left: 120.0,
                    top:(MediaQuery. of(context). size. height-230)/6-10,
                  ),
                ],
              ),
            ),
          ),

          // if (banner==null)
          //   SizedBox(height: 50.0)
          // else
          //   Container(
          //     height: 50.0,
          //     child: AdWidget(ad: banner,),
          //   )
        ],
      ),


    );
  }
}
