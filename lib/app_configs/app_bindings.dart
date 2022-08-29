import 'package:get/instance_manager.dart';
import 'package:sankheshwar_customer/screens/account/controller/menu_controller.dart';
import 'package:sankheshwar_customer/screens/dashboard/controller/dashboard_controller.dart';
import 'package:sankheshwar_customer/screens/homepage/controller/home_controller.dart';
import 'package:sankheshwar_customer/screens/play_video/controller/video_play_controller.dart';
import 'package:sankheshwar_customer/screens/show_categories_items/controller/show_categories_items_controller.dart';
import 'package:sankheshwar_customer/screens/wishlist/controller/wishlist_controller.dart';

import '../screens/authentication/login/controller/login_controller.dart';
import '../screens/authentication/registration/controller/registration_controller.dart';
import '../screens/my_learning/controller/my_learning_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    //Get.lazyPut(() => SplashController());
    Get.lazyPut(() => LoginController());
  }
}

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}

class RegistrationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationController());
  }
}

class DashboardBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => HomeScreenController());
  }
}

class AccountScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountController());
  }
}

class MyLearningScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyLearningController());
  }
}

class HomeScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}

class WishListScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WishListController());
  }
}

class ShowCategoriesScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShowCategoriesItemController());
  }
}

class VideoPlayScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlayVideoController());
  }
}
