import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sankheshwar_customer/app_configs/string_extension.dart';

import '../../../utils/app_appbar.dart';
import '../../show_categories_items/screen/show_categories_item_screen.dart';
import '../controller/home_controller.dart';

class AllLanguageCategories extends GetView<HomeScreenController> {
  static const String routeName = "/AllLanguageCategories";
  const AllLanguageCategories({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar.withOutTitleAndShareButtonBackButton(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: Row(
                children: [
                  Text(
                    "Courses",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                        color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            ListView.builder(
                shrinkWrap: true,
                itemCount: controller.language.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  int index1 = index + 1;
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(ShowCategoriesItemsScreen.routeName);
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5.0)
                            ]),
                        child: ListTile(
                          leading: Text(index1.toString(),
                              style: TextStyle(fontSize: 16.sp)),
                          title:
                              Text(controller.language[index].toString().inCaps,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                  )),
                          trailing: Icon(Icons.navigate_next, size: 20.sp),
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
