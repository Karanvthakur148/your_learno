import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../../utils/app_appbar.dart';
import '../../show_categories_items/screen/show_categories_item_screen.dart';
import '../controller/my_learning_controller.dart';

class MyLearningScreen extends GetView<MyLearningController> {
  static const String routeName = "/TokenTransactionScreen";
  const MyLearningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar.titleWithoutBackButton(title: 'My Learning'),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed(ShowCategoriesItemsScreen.routeName);
            },
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(5.r),
                child: Image.asset(
                  'assets/codewithherry.png',
                  fit: BoxFit.fill,
                  height: 60.h,
                  width: 60.w,
                ),
              ),
              title: Text("The complete dart language",
                  maxLines: 2,
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
              subtitle: Text('Adil Ahmed', style: TextStyle(fontSize: 12.sp)),
            ),
          );
        },
      ),
    );
  }
}
