import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sankheshwar_customer/screens/dashboard/screen/dashboard_screen.dart';

import '../controller/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  static const String routeName = "/loginScreen";

  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          height: double.infinity,
          width: double.maxFinite,
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  opacity: .3,
                  image: AssetImage("assets/background.jpeg"),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DelayedDisplay(
              delay: Duration(seconds: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 360.h,
                  ),
                  Text(
                    "Welcome to \n        Your Learno",
                    style: TextStyle(color: Colors.white, fontSize: 26.sp),
                  ),
                  Text(
                    "we provide a smart,\nsolution for learning.",
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  ),
                  SizedBox(height: 30.h),
                  GestureDetector(
                    onTap: () {
                      // Get.to(DashBoardScreen());
                      Get.offAndToNamed(DashBoardScreen.routeName);
                      // Get.toNamed(HomeScreen.routeName);
                    },
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        child: Center(
                            child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "assets/googleicon-removebg-preview.png",
                                  height: 35.h,
                                  width: 35.w),
                              SizedBox(width: 10),
                              Text(
                                'Login ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22.sp),
                              ),
                            ],
                          ),
                        ))),
                  )
                ],
              ),
            ),
          )),
    ));
  }
}
