import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdState{
  Future<InitializationStatus> initialization;

  AdState(this.initialization);
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-6659979212727106/6714834311";
    }else{
      throw new UnsupportedError("Unsuported Platform");
    }
  }


  BannerAdListener get adListener => _adListener;
  BannerAdListener _adListener=BannerAdListener(
    onAdLoaded: (Ad banner) => print('Ad loaded.'),
    onAdClosed: (Ad banner) => print('Ad closed'),
    onAdFailedToLoad: (ad, error) =>
        print('Ad failed to load'),
    onAdOpened: (Ad banner) =>print('Ad opened'),
    onAdImpression: (Ad banner)=> print('Ad impression')
  );
}