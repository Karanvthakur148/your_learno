import 'package:get/get.dart';
import 'package:sankheshwar_customer/screens/authentication/login/screen/login_screen.dart';
import 'package:sankheshwar_customer/screens/dashboard/screen/dashboard_screen.dart';
import 'package:sankheshwar_customer/screens/menu/screen/menu_screen.dart';
import 'package:sankheshwar_customer/screens/token_transection/screen/tokentransaction_screen.dart';
import 'package:sankheshwar_customer/screens/wallet/screen/wallet_screen.dart';

import '../screens/authentication/registration/screen/registration_screen.dart';
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
      name: MenuScreen.routeName,
      page: () => const MenuScreen(),
      binding: MenuScreenBindings(),
    ),
    GetPage(
      name: TokenTransactionScreen.routeName,
      page: () => const TokenTransactionScreen(),
      binding: TokenTransactionScreenBindings(),
    ),
    GetPage(
      name: WalletScreen.routeName,
      page: () => const WalletScreen(),
      binding: WalletScreenBindings(),
    ),
  ];
}
