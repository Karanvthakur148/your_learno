import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppAppbar {
  static AppBar titleBackButton({
    required String title,
    Function()? onPressed,
  }) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Image.asset('assets/left_arrow.png'),
        onPressed: () {
          if (onPressed == null) {
            Get.back();
          } else {
            onPressed();
          }
        },
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  static AppBar titleWithoutBackButton({required String title}) {
    return AppBar(
      centerTitle: true,
      elevation: 1,
      title: Text(
        title,
      ),
    );
  }
}
