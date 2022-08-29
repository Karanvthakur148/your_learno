import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sankheshwar_customer/screens/wishlist/controller/wishlist_controller.dart';

import '../../../utils/app_appbar.dart';
import '../../show_categories_items/screen/show_categories_item_screen.dart';

class WishListScreen extends GetView<WishListController> {
  static const String routeName = "/wishList";
  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar.titleWithoutBackButton(title: 'WishList'),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 10.h),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed(ShowCategoriesItemsScreen.routeName);
            },
            child: Container(
              height: 90.h,
              width: 100.w,
              child: Column(
                children: [
                  ListTile(
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
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Adil Ahmed', style: TextStyle(fontSize: 12.sp)),
                        Row(
                          children: [
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            ),
                            RatingBarIndicator(
                              rating: 4.5,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 16.sp,
                              direction: Axis.horizontal,
                            ),
                            Text(
                              '(500)',
                              style: TextStyle(fontSize: 12.sp),
                            )
                          ],
                        ),
                      ],
                    ),
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite)),
                  ),
                  Divider()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
