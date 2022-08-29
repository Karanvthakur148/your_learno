import 'package:get/get.dart';

import '../../account/screen/account_screen.dart';
import '../../homepage/screen/home_screen.dart';
import '../../my_learning/screen/my_learning_screen.dart';
import '../../wishlist/screen/wishlist_screen.dart';

class DashboardController extends GetxController {
  RxInt currentIndex = 0.obs;

  List pageData = [
    const HomeScreen(),
    const MyLearningScreen(),
    const WishListScreen(),
    const AccountScreen(),
  ];
  void onItemTapped(int index) {
    currentIndex.value = index;
  }
}
