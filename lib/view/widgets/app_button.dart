import 'package:flutter/material.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.isLoading = false,
    required this.title,
    this.width = 100,
    this.height = 40,
    required this.onPress,
    this.textColor = AppColors.whiteColor,
    this.bgColor = AppColors.successColor,
  });

  final bool isLoading;
  final String title;
  final double width, height;
  final VoidCallback onPress;
  final Color textColor, bgColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor,
        ),
        child: !isLoading
            ? Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              )
            : const Center(
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.whiteColor),
                    strokeWidth: 2.0,
                  ),
                ),
              ),
      ),
    );
  }
}
