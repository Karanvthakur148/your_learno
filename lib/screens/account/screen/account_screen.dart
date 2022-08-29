import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sankheshwar_customer/screens/dashboard/controller/dashboard_controller.dart';

import '../../../app_configs/app_strings.dart';
import '../controller/menu_controller.dart';

class AccountScreen extends GetView<AccountController> {
  static const String routeName = "/accountScreen";
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5.0)
                  ]),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 102.sp,
                      color: Colors.grey,
                    ),
                    Center(
                        child: Text(
                      "Karan Thakur",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 26.sp),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail_outline, size: 28.sp),
                        SizedBox(width: 10.w),
                        Text("Karanvthakur148@gmail.com",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 14.sp)),
                      ],
                    ),
                  ]),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Card(
                    elevation: 2,
                    child: ListTile(
                      trailing: Icon(Icons.navigate_next),
                      title: Text("About " + DynamicAppConstant.appName),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: () {
                    DashboardController dashboardController =
                        Get.find<DashboardController>();
                    dashboardController.currentIndex.value = 1;
                  },
                  child: Card(
                    elevation: 2,
                    child: ListTile(
                      trailing: Icon(Icons.play_circle_outline),
                      title: Text("My Learning"),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: () {
                    DashboardController dashboardController =
                        Get.find<DashboardController>();
                    dashboardController.currentIndex.value = 2;
                  },
                  child: Card(
                    elevation: 2,
                    child: ListTile(
                      trailing: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      title: Text("WishList"),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: () {
                    DynamicAppConstant.shareApp("Share our App");
                    // DynamicAppConstant.shareApp(
                    //     "Your Learno has multiples IT courses and playlist for free learning");
                  },
                  child: Card(
                    elevation: 2,
                    child: ListTile(
                      trailing: Icon(Icons.share),
                      title: Text("Share the Your Learno app"),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Card(
                  elevation: 2,
                  child: ListTile(
                    trailing: Icon(Icons.logout),
                    title: Text("Sign out"),
                  ),
                ),
              ],
            )),
          )
        ],
      )),
    );
  }
}
