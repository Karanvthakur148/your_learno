import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:sankheshwar_customer/screens/dashboard/screen/dashboard_screen.dart';

import '../../../../utils/rounded_button_controller.dart';

class LoginController extends GetxController {
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RoundedLoadingButtonController loginButton = RoundedLoadingButtonController();

  Rx<AutovalidateMode> autoValidateMode = AutovalidateMode.disabled.obs;
  final formKey = GlobalKey<FormState>();
  // RxInt collectionReference = 0.obs;
  // final CollectionReference messageCollection =
  //     FirebaseFirestore.instance.collection('users');
  

  @override
  void onInit() async {
    super.onInit();
  }

  String? phoneValidator(String value) {
    if (value == "") {
      return "Please enter mobile number";
    } else if (value.length < 10) {
      return "Please enter 10 digit mobile number";
    } else {
      return null;
    }
  }

  String? passwordValidator(String value) {
    if (value == "") {
      return "Please enter password";
    } else {
      return null;
    }
  }

  void onLogin() async {
    if (formKey.currentState!.validate()) {
      autoValidateMode.value = AutovalidateMode.disabled;
      bool value = true;
      if (value) {
        RoundedButtonController.successReset(loginButton);

        Get.offAndToNamed(DashBoardScreen.routeName);
      } else {
        RoundedButtonController.errorReset(loginButton);
      }
    } else {
      autoValidateMode.value = AutovalidateMode.always;
      RoundedButtonController.errorReset(loginButton);
    }
  }
}
