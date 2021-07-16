import 'package:bera_tiles/screens/berabeats.dart';
import 'package:bera_tiles/screens/contactus.dart';
import 'package:bera_tiles/screens/drums.dart';
import 'package:bera_tiles/screens/home_screen.dart';
import 'package:bera_tiles/screens/privacypolicy.dart';
import 'package:bera_tiles/single_bera/bongo.dart';
import 'package:bera_tiles/single_bera/gataberaya.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
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
import 'package:bera_tiles/game/level1.dart';
import 'package:bera_tiles/game/level2.dart';
import 'package:bera_tiles/game/level3.dart';
import 'package:bera_tiles/game/level4.dart';
import 'package:bera_tiles/game/level5.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await UserSimplePreferences.init();
  runApp(BeraApp());
}


class BeraApp extends StatefulWidget {

  @override
  State<BeraApp> createState() => _BeraAppState();
}

class _BeraAppState extends State<BeraApp> with WidgetsBindingObserver{
  @override
  Widget build(BuildContext context) {return  MaterialApp(
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
        Game3.id: (context)=>Game3(),
        Game4.id: (context)=>Game4(),
        Game5.id: (context)=>Game5(),
        Game6.id: (context)=>Game6(),
        Game7.id: (context)=>Game7(),
        Gamehome.id: (context)=>Gamehome(),
      },
    );
  }
}
