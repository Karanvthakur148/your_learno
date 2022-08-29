import 'package:get/get.dart';
import 'package:sankheshwar_customer/screens/authentication/login/screen/login_screen.dart';
import 'package:sankheshwar_customer/screens/dashboard/screen/dashboard_screen.dart';
import 'package:sankheshwar_customer/screens/homepage/screen/language_all_categories.dart';
import 'package:sankheshwar_customer/screens/play_video/screen/video_play_screen.dart';
import 'package:sankheshwar_customer/screens/show_categories_items/screen/show_categories_item_screen.dart';
import 'package:sankheshwar_customer/screens/wishlist/screen/wishlist_screen.dart';

import '../screens/account/screen/account_screen.dart';
import '../screens/authentication/registration/screen/registration_screen.dart';
import '../screens/homepage/screen/home_screen.dart';
import '../screens/my_learning/screen/my_learning_screen.dart';
import '../screens/splash/screen/splash_screen.dart';
import 'app_bindings.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: SplashScreen.routeName,
      page: () => const SplashScreen(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: LoginScreen.routeName,
      page: () => const LoginScreen(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: DashBoardScreen.routeName,
      page: () => DashBoardScreen(),
      binding: DashboardBindings(),
    ),
    GetPage(
      name: RegistrationScreen.routeName,
      page: () => const RegistrationScreen(),
      binding: RegistrationBindings(),
    ),
    GetPage(
      name: AccountScreen.routeName,
      page: () => const AccountScreen(),
      binding: AccountScreenBindings(),
    ),
    GetPage(
      name: MyLearningScreen.routeName,
      page: () => const MyLearningScreen(),
      binding: MyLearningScreenBindings(),
    ),
    GetPage(
      name: HomeScreen.routeName,
      page: () => const HomeScreen(),
      binding: HomeScreenBindings(),
    ),
    GetPage(
      name: WishListScreen.routeName,
      page: () => const WishListScreen(),
      binding: WishListScreenBindings(),
    ),
    GetPage(
      name: ShowCategoriesItemsScreen.routeName,
      page: () => const ShowCategoriesItemsScreen(),
      binding: ShowCategoriesScreenBindings(),
    ),
    GetPage(
      name: PlayVideoScreen.routeName,
      page: () => const PlayVideoScreen(),
      binding: VideoPlayScreenBindings(),
    ),
    GetPage(
      name: AllLanguageCategories.routeName,
      page: () => const AllLanguageCategories(),
      binding: HomeScreenBindings(),
    ),
  ];
}
