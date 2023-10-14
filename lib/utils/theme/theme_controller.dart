import 'package:get/get.dart';

import 'theme_preferences.dart';

class ThemeController extends GetxController {
  var darkTheme = false.obs;

  @override
  void onInit() {
    getDarkThemeStatus();
    super.onInit();
  }
}
