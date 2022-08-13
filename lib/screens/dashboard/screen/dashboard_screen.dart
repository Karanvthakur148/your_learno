import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/dashboard_controller.dart';

class DashBoardScreen extends GetView<DashboardController> {
  static const String routeName = "/DashBoardScreen";

  DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: avoid_unnecessary_containers
        body: Obx(() => Container(
            child: controller.pageData[controller.currentIndex.value])),
        bottomNavigationBar: Obx(() {
          return BottomNavigationBar(
              selectedItemColor: Theme.of(context).primaryColor,
              unselectedItemColor: Colors.teal,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              currentIndex: controller.currentIndex.value,
              selectedFontSize: 14.0,
              unselectedFontSize: 14.0,
              onTap: controller.onItemTapped,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.token), label: 'My'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
              ]);
        }));
  }

  Widget buildMyNavBar(BuildContext context, index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              enableFeedback: true,
              onPressed: () {
                controller.currentIndex.value = 0;
              },
              // ignore: unrelated_type_equality_checks
              icon: const Icon(
                Icons.wallet,
                color: Colors.grey,
                size: 25,
              ),
            ),
            Text('Wallet')
          ],
        ),
        IconButton(
          enableFeedback: true,
          onPressed: () {
            controller.currentIndex.value = 1;
          },
          // ignore: unrelated_type_equality_checks
          icon: Icon(
            Icons.signal_cellular_alt,
            color: Colors.grey.shade600,
            size: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: IconButton(
            enableFeedback: true,
            onPressed: () {
              controller.currentIndex.value = 2;
            },
            // ignore: unrelated_type_equality_checks
            icon: Container(
              // height: Get.height / 4,
              // width: Get.width / 2.5,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Center(
                child: Text(
                  "Live",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
