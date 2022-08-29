import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sankheshwar_customer/screens/show_categories_items/controller/show_categories_items_controller.dart';

import '../../../utils/app_appbar.dart';
import '../../play_video/screen/video_play_screen.dart';

class ShowCategoriesItemsScreen extends GetView<ShowCategoriesItemController> {
  static const String routeName = "/showCategoriesItemsScreen";
  const ShowCategoriesItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar.titleWithBackButton(title: 'VideoList'),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.r),
                  child: Card(
                    elevation: 3,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.r),
                          child: Image.asset(
                            'assets/codewithherry.png',
                            fit: BoxFit.fill,
                            height: 160.h,
                            width: 330.w,
                          ),
                        ),
                        Positioned(
                          bottom: 65.h,
                          top: -70.h,
                          right: -4.w,
                          child: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Master React Beginners crystal report 2013 & 2011 tutorial report",
                  maxLines: 2,
                  style:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 5.h),
                Text(
                  "Learn how to use crystal report quickly.A comprehensive crystal report tutorial for beginners. covers2013 & 2011 Master React Beginners crystal report 2013 & 2011 tutorial report",
                  maxLines: 4,
                  style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Text(
                      "4.5",
                      style: TextStyle(fontSize: 14.sp, color: Colors.grey),
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
                      style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      'Created by ',
                      style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                    ),
                    Text(
                      'Code with herry',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Icon(Icons.language,
                        size: 20.sp, color: Colors.grey.shade700),
                    SizedBox(width: 10.w),
                    Text(
                      'English',
                      style: TextStyle(
                          fontSize: 14.sp, color: Colors.grey.shade700),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Text(
                      'Curriculum : ',
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      '129 lecture',
                      style: TextStyle(
                          fontSize: 14.sp, color: Colors.grey.shade700),
                    )
                  ],
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      var index1 = index + 1;
                      return ListTile(
                        leading: Text(index1.toString()),
                        title: const Text('function and list'),
                        subtitle: const Text('05:10 mins'),
                        trailing: IconButton(
                            onPressed: () {
                              Get.toNamed(PlayVideoScreen.routeName);
                            },
                            icon: Icon(Icons.play_circle_outline)),
                      );
                    })
              ],
            ),
          ),
        )
      ]),
    );
  }
}
