import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';
import 'package:sankheshwar_customer/screens/wallet/controller/wallet_controller.dart';

import '../../../utils/app_appbar.dart';

class WalletScreen extends GetView<WalletController> {
  static const String routeName = "/WalletScreen";
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar.titleWithoutBackButton(title: 'Wallet'),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            child: Container(
              child: Column(children: [
                SizedBox(height: 10.h),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                    height: 110.h,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Wallet Ballance',
                                  style: TextStyle(fontSize: 18.sp)),
                              Icon(
                                Icons.wallet,
                                size: 40.sp,
                              )
                            ],
                          ),
                          Text(
                            '₹100',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                          SizedBox(height: 5.h),
                          Container(
                            width: 150.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  height: 50.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor),
                                  child: Icon(Icons.qr_code_scanner,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
                SizedBox(height: 10.h),
                Align(alignment: Alignment.topLeft, child: Text('Transaction')),
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
                              child: ListTile(
                                title: Text('Amount : 100'),
                                subtitle: Text('Type : Add'),
                                trailing: Icon(Icons.keyboard_arrow_down_sharp),
                              )),
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
