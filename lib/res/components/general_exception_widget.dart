import 'package:flutter/cupertino.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/res/components/app_button.dart';

class GeneralExceptionWidget extends StatelessWidget {
  const GeneralExceptionWidget({super.key, required this.onPress, required this.title});

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            CupertinoIcons.wifi_exclamationmark,
            color: AppColors.dangerColor,
            size: 40,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          AppButton(title: "Retry", onPress: onPress)
        ],
      ),
    );
  }
}
