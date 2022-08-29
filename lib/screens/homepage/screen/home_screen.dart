import 'package:carousel_slider/carousel_slider.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sankheshwar_customer/screens/homepage/controller/home_controller.dart';
import 'package:sankheshwar_customer/screens/homepage/screen/language_all_categories.dart';

import '../../../app_configs/app_strings.dart';
import '../../dashboard/controller/dashboard_controller.dart';
import '../../show_categories_items/screen/show_categories_item_screen.dart';

class HomeScreen extends GetView<HomeScreenController> {
  static const String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(seconds: 1),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 100.w,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Image.asset(DynamicAppConstant.appLogo),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notification_important,
                  color: Colors.black,
                )),
            // Navigate to the Search Screen
            IconButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const SearchPage())),
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            GestureDetector(
              onTap: () {
                DashboardController dashboardController =
                    Get.find<DashboardController>();
                dashboardController.currentIndex.value = 3;
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 16.r,
                  child: Text('K',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp)),
                ),
              ),
            )
          ],
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: [
            Container(
                height: 180.h,
                width: double.maxFinite,
                child: CarouselSlider(
                  options: CarouselOptions(
                      aspectRatio: 1.0,
                      viewportFraction: 1.0,
                      enlargeCenterPage: true,
                      height: 180.h,
                      autoPlay: true),
                  items: controller.list
                      .map(
                        (item) => Image.asset(
                          item["url"],
                          fit: BoxFit.fill,
                          width: double.maxFinite,
                        ),
                      )
                      .toList(),
                )),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Language Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AllLanguageCategories.routeName);
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Divider(thickness: 2, color: Colors.grey),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  height: 90.h,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: List.generate(
                            7,
                            (index) => GestureDetector(
                              onTap: () {
                                Get.toNamed(
                                    ShowCategoriesItemsScreen.routeName);
                              },
                              child: Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 10.w,
                                    vertical: 5.h,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.w, vertical: 8.h),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      border: Border.all(color: Colors.black)),
                                  child: Text(controller.language[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14.sp))),
                            ),
                          ),
                        ),
                        Row(
                          children: List.generate(
                            4,
                            (index) => GestureDetector(
                              onTap: () {
                                Get.toNamed(
                                    ShowCategoriesItemsScreen.routeName);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 10.w,
                                  vertical: 5.h,
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.w, vertical: 8.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    border: Border.all(color: Colors.black)),
                                child: Text(
                                    controller.language[
                                        controller.language.length - 1 - index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.sp)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Latest Courses",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(right: 180.w),
                  child: Divider(thickness: 2, color: Colors.grey),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 190.h,
                  width: double.maxFinite,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed(ShowCategoriesItemsScreen.routeName);
                            // Get.to(AudioBookDetail());
                          },
                          child: Card(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Container(
                              width: 190.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5.r),
                                    child: Image.asset(
                                        "assets/codewithherry.png",
                                        width: 190.w,
                                        height: 120.h,
                                        fit: BoxFit.fill),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    "Master React",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  ),
                                  Text(
                                    "Code with Herry",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.sp, color: Colors.grey),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("4.5"),
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
                                      Text('(500)')
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 20.h),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Most Popular Courses",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(right: 120.w),
                  child: Divider(thickness: 2, color: Colors.grey),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 190.h,
                  width: double.maxFinite,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed(ShowCategoriesItemsScreen.routeName);
                          },
                          child: Card(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Container(
                              width: 190.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5.r),
                                    child: Image.asset(
                                        "assets/codewithherry.png",
                                        width: 190.w,
                                        height: 120.h,
                                        fit: BoxFit.fill),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    "Master React",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  ),
                                  Text(
                                    "Code with Herry",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.sp, color: Colors.grey),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("4.5"),
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
                                      Text('(500)')
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 20.h),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(right: 220.w),
                  child: Divider(thickness: 2, color: Colors.grey),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 0.h),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 2.w,
                      mainAxisSpacing: 2.h,
                      childAspectRatio: 7 / 8,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(ShowCategoriesItemsScreen.routeName);
                        },
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5.r),
                                  child: Image.asset("assets/codewithherry.png",
                                      width: 160.w,
                                      height: 90.h,
                                      fit: BoxFit.fill),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "Master React",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp),
                                ),
                                Text(
                                  "Code with Herry",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12.sp, color: Colors.grey),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("4.5"),
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
                                    Text('(500)')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // The search area here
          title: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    /* Clear the search field */
                  },
                ),
                hintText: 'Search...',
                border: InputBorder.none),
          ),
        ),
      )),
    );
  }
}
