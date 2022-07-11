import 'dart:async';

import 'package:get/get.dart';

import '../../../services/db.dart';
import '../../authentication/login/screen/login_screen.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    bool? logValue = await Db.getLogValue();
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(LoginScreen.routeName);
    });
    super.onInit();
  }

  void init() {
    onInit();
  }
}
