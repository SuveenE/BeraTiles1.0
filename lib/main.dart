import 'package:bera_tiles/screens/berabeats.dart';
import 'package:bera_tiles/screens/contactus.dart';
import 'package:bera_tiles/screens/drums.dart';
import 'package:bera_tiles/screens/home_screen.dart';
import 'package:bera_tiles/screens/privacypolicy.dart';
import 'package:bera_tiles/single_bera/bongo.dart';
import 'package:bera_tiles/single_bera/gataberaya.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'single_bera/udakkiya.dart';
import 'package:bera_tiles/single_bera/dawulberaya.dart';
import 'package:bera_tiles/single_bera/thabla.dart';
import 'package:bera_tiles/single_bera/Thammattama.dart';
import 'package:bera_tiles/single_bera/Rabana.dart';
import 'package:bera_tiles/screens/all12.dart';
import 'package:bera_tiles/game/game_screen.dart';
import 'package:bera_tiles/game/game_screen1.dart';
import 'package:bera_tiles/game/game_screen2.dart';
import 'package:bera_tiles/game/game_home.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:bera_tiles/game/ad_state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final initFuture = MobileAds.instance.initialize();
  final adState = AdState(initFuture);
  runApp(
      Provider.value(
        value: adState,
        builder: (context, child)=>
          BeraApp()
  ),
  );
}


class BeraApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      initialRoute: HomeScreen.id,
      routes: {
        //all6.id: (context)=>all6(),
        HomeScreen.id: (context)=>HomeScreen(),
        Drums.id: (context)=>Drums(),
        Getaberaya.id: (context)=>Getaberaya(),
        Thabla.id: (context)=>Thabla(),
        Rabana.id: (context)=>Rabana(),
        Udakkiya.id: (context)=>Udakkiya(),
        Dawulberaya.id: (context)=>Dawulberaya(),
        Contactus.id: (context)=>Contactus(),
        Privacypolicy.id: (context)=>Privacypolicy(),
        Thammattama.id: (context)=>Thammattama(),
        berabeats.id: (context)=>berabeats(),
        All12.id: (context)=>All12(),
        Bongo.id: (context)=>Bongo(),
        Game.id: (context)=>Game(),
        Game1.id: (context)=>Game1(),
        Game2.id: (context)=>Game2(),
        Gamehome.id: (context)=>Gamehome(),
      },
    );
  }
}