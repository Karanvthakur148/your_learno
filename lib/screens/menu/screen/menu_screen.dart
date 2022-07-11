import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../controller/menu_controller.dart';

class MenuScreen extends GetView<MenuController> {
  static const String routeName = "/MenuScreen";
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Center(
                child: Text(
                  "Welcome to",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Shankheshwar",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
