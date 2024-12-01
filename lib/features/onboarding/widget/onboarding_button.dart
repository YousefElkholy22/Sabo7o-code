import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siginfy/core/theming/app_text_styles.dart';

class OnBoardingeButton extends StatelessWidget {
  const OnBoardingeButton({super.key, this.onPressed, required this.titl});
  final void Function()? onPressed;
  final String titl;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Color(0xff7AB4EF)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(Size(double.maxFinite, 50.h)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(820.w),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        titl,
        style: AppTextStyles.font14BlackRegular,
      ),
    );
  }
}
