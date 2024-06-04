import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {
  static Color getBodyColor() {
    return Get.isDarkMode ? bodyColorDark : bodyColor;
  }

  static Color getContainerColor() {
    return Get.isDarkMode ? containerColorDark : whiteColor;
  }

  static Color getBackgroundColor() {
    return Get.isDarkMode ? containerColorDark : backgroundColor;
  }

  static Color getShadowColor() {
    return Get.isDarkMode ? shadowColorDark : shadowColor;
  }

  static Color getTitleColor() {
    return Get.isDarkMode ? titleColorDark : titleColor;
  }

  static Color getTextColor() {
    return Get.isDarkMode ? textColorDark : textColor;
  }

  static Color getTextColor2() {
    return Get.isDarkMode ? textColorDark : textColor2;
  }

  static Color getInputColor() {
    return Get.isDarkMode ? bodyColorDark : inputColor;
  }

  static Color getBorderColor() {
    return Get.isDarkMode ? borderColorDark : borderColor;
  }

  static Color getBtnColor() {
    return Get.isDarkMode ? primaryColor : btnColor;
  }

  // Primary Colors
  static const Color whiteColor = Color(0xFFffffff);
  static const Color blackColor = Color(0xFF000000);
  static Color primaryColor = const Color(0xFFfd6b30);
  static const Color successColor = Color(0xFF5fbe67);
  static const Color dangerColor = Color(0xFFFF536A);
  static const Color infoColor = Color(0xFF8fceff);
  static const Color violetColor = Color(0xFF9093fe);
  static const Color orangeColor = Color(0xFFff8254);
  static const Color warningColor = Color(0xFFffc457);

  // Backgorund Colors
  static const Color bodyColor = Color(0xFFFFF9F1);
  static const Color backgroundColor = Color(0xFFFFFCF7);
  static const Color shadowColor = Color(0xFFeeeeee);
  static const Color scaffoldColor = Color(0xFF0b1727);
  static const Color borderColor = Color(0xFFe7e7e9);
  static const Color btnColor = Color(0xFF010103);

  // static const Color inputColor = Color(0xFFFAF3E9);
  static const Color inputColor = Color(0xFFf7f7f8);

  // Text Colors
  static const Color titleColor = Color(0xFF29313F);
  static const Color textColor = Color(0xFF6e6d7a);
  static const Color textColor2 = Color(0xFFB8BCC4);
  static const Color titleColorDark = Color(0xFFf1f7f7);
  static const Color textColorDark = Color(0xFFD9E7FD);

  // dark mode
  static const Color bodyColorDark = Color(0xFF0f1925); //0xFF0f1925
  static const Color containerColorDark = Color(0xFF1c293a);
  static const Color shadowColorDark = Color(0x00000000);
  static const Color borderColorDark = Color(0xFF293C55);
  static const Color inputColorDark = Color(0xFF182E4E);
}
