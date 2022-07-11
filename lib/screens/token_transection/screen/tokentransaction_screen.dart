import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';
import 'package:sankheshwar_customer/screens/token_transection/controller/token_controller.dart';

import '../../../utils/app_appbar.dart';

class TokenTransactionScreen extends GetView<TokenTransactionController> {
  static const String routeName = "/TokenTransactionScreen";
  const TokenTransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar.titleWithoutBackButton(title: 'Token Transaction'),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            child: Container(
              child: Column(children: [
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Container(
                    height: 70.h,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Number of Token ',
                            style: TextStyle(fontSize: 18.sp),
                          )
                        ]),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Transaction'), Text('See All')],
                ),
                ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.h),
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.w),
                            height: 70.h,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Date : 10/11/2022',
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    'Time : 10:03 AM ',
                                    style: TextStyle(fontSize: 18.sp),
                                  )
                                ]),
                          ),
                        ),
                      );
                    })
              ]),
            ),
          )
        ],
      ),
    );
  }
}
