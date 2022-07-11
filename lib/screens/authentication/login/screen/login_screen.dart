import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sankheshwar_customer/utils/app_button.dart';

import '../../registration/screen/registration_screen.dart';
import '../controller/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  static const String routeName = "/loginScreen";

  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              shrinkWrap: true,
              children: [
                SizedBox(height: 25.h),
                Image.asset('assets/appstore.png', height: 200),
                SizedBox(height: 10.h),
                textField(context),
                SizedBox(height: 20),
                AppButton.primaryButton(
                    title: 'Log In',
                    onPressed: () {
                      controller.onLogin();
                    },
                    controller: controller.loginButton),
                SizedBox(height: 15),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account? "),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(RegistrationScreen.routeName);
                        },
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      )
                    ])
              ],
            ),
          ),
        ),
      ),
    );
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
