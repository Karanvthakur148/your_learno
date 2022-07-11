import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sankheshwar_customer/app_configs/app_strings.dart';
import 'package:sankheshwar_customer/screens/authentication/registration/controller/registration_controller.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../utils/app_appbar.dart';

class RegistrationScreen extends GetView<RegistrationController> {
  static const String routeName = "/registrationScreen";

  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppAppbar.titleBackButton(title: 'SignUp'),
        body: Center(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              shrinkWrap: true,
              children: [
                SizedBox(height: 25.h),
                SizedBox(height: 10.h),
                Text('Login Id and Password  will be provided by Shankheshwar ',
                    textAlign: TextAlign.center),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('Back'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        launch(('tel:+${DynamicAppConstant.mobileNo}'));
                      },
                      child: Text('Contact'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
