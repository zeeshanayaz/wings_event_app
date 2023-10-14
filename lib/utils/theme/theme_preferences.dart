import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'theme_controller.dart';

const themeStatus = "THEME_STATUS";

setDarkThemeStatus(bool value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool(themeStatus, value);
  Get.changeThemeMode(value == true ? ThemeMode.dark : ThemeMode.light);
}

getDarkThemeStatus() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? darkThemeStatus = prefs.getBool(themeStatus);
  ThemeController themeController = Get.find<ThemeController>();

  if(darkThemeStatus != null){
    setDarkThemeStatus(darkThemeStatus);
    themeController.darkTheme(darkThemeStatus);
  }else{
    var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    setDarkThemeStatus(isDarkMode);
    themeController.darkTheme(isDarkMode);
  }

  return darkThemeStatus;
}
