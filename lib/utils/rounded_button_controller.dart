import 'dart:developer';

import 'package:rounded_loading_button/rounded_loading_button.dart';

class RoundedButtonController {
  static Future<void> successReset(RoundedLoadingButtonController controller) async {
    log("calling");
    controller.success();
    await Future.delayed(const Duration(seconds: 1));
    controller.reset();
    log("calling");
  }

  static Future<void> errorReset(RoundedLoadingButtonController controller) async {
    log("calling");
    controller.error();
    await Future.delayed(const Duration(seconds: 1));
    controller.reset();
    log("calling");
  }
}
