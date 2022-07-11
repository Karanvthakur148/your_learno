import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:sankheshwar_customer/app_configs/app_colors.dart';

class AppButton {
  static RoundedLoadingButton primaryButton(
      {required String title,
      required void Function() onPressed,
      required RoundedLoadingButtonController controller}) {
    return RoundedLoadingButton(
      successColor: AppColors.secondaryColor,
      errorColor: AppColors.secondaryColor,
      resetDuration: const Duration(seconds: 3),
      width: Get.width * 0.7,
      height: 45.h,
      color: AppColors.secondaryColor,
      borderRadius: 10.r,
      controller: controller,
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.sp,
        ),
      ),
    );
  }
}
