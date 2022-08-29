import 'package:share_plus/share_plus.dart';

class DynamicAppConstant {
  static const int mobileNo = 919098941214;
  static const String appName = "Your Learno";
  static const String appLogo = "assets/Youtube-logo-png.png";
  static const String appUrl = "https//";

  //Function for Share the app
  static void shareApp(String message) {
    //Share.shareFiles([appLogo], text: 'Great picture');

    Share.share(
      '$message $appUrl',
    );
  }
}
