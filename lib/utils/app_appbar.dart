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

  static AppBar titleWithBackButton({required String title}) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back_ios),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.share)),
        SizedBox(
          width: 10,
        )
      ],
      elevation: 1,
      title: Text(
        title,
      ),
    );
  }

  static AppBar withOutTitleAndShareButtonBackButton() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      elevation: 0,
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
