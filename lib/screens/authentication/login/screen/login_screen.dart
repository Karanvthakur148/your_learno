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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 380.h,
                ),
                Text(
                  "heloo everyone,",
                  style: TextStyle(color: Colors.white, fontSize: 26.sp),
                ),
                Text(
                  "we provide online solution for study",
                  style: TextStyle(color: Colors.white, fontSize: 22.sp),
                ),
                Text(
                  "lets learn together",
                  style: TextStyle(color: Colors.white, fontSize: 18.sp),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Get.offAndToNamed(DashBoardScreen.routeName);
                  },
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: Center(
                          child: Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Theme.of(context).primaryColor),
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
          )),
    ));
  }

  textField(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Phone'),
          SizedBox(height: 10),
          TextFormField(
              autofocus: false,
              controller: controller.mobileNumberController,
              autovalidateMode: controller.autoValidateMode.value,
              keyboardType: TextInputType.number,
              validator: (value) => controller.phoneValidator(value!),
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "Phone",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
          SizedBox(height: 20),
          Text('Password'),
          SizedBox(height: 10),
          TextFormField(
              controller: controller.passwordController,
              autovalidateMode: controller.autoValidateMode.value,
              keyboardType: TextInputType.number,
              validator: (value) => controller.passwordValidator(value!),
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: "password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
        ],
      ),
    );
  }
}
