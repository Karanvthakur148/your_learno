import 'package:get/instance_manager.dart';
import 'package:sankheshwar_customer/screens/dashboard/controller/dashboard_controller.dart';
import 'package:sankheshwar_customer/screens/menu/controller/menu_controller.dart';
import 'package:sankheshwar_customer/screens/token_transection/controller/token_controller.dart';
import 'package:sankheshwar_customer/screens/wallet/controller/wallet_controller.dart';

import '../screens/authentication/login/controller/login_controller.dart';
import '../screens/authentication/registration/controller/registration_controller.dart';

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
    Get.put(RegistrationController());
  }
}

class DashboardBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
  }
}

class MenuScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MenuController());
  }
}

class TokenTransactionScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(TokenTransactionController());
  }
}

class WalletScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(WalletController());
  }
}
