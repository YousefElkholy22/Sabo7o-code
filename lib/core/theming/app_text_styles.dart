import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siginfy/core/helpers/font_wieght.dart';
import 'package:siginfy/core/theming/app_colors.dart';

class AppTextStyles {
  static TextStyle font30WhiteExtraBold = TextStyle(
    color: gray,
    fontSize: 25.sp,
    fontWeight: FontWeightHelper.extraBold, // ExtraBold weight
  );

  static TextStyle font16WhiteRegular = TextStyle(
    color: gray,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular, // Regular weight
  );

  static TextStyle font14BlackRegular = TextStyle(
    color: black,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular, // Regular weight
  );
  static TextStyle font32BlackBold = TextStyle(
    color: black,
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold, // Regular weight
  );
  static TextStyle font16lightgrayregular = TextStyle(
    color: lightgray,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular, // Regular weight
  );
  static TextStyle font14lightgraymedium = TextStyle(
    color: lightgray,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium, // Regular weight
  );
  static TextStyle font16Blackmedium = TextStyle(
    color: lightgray,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium, // Regular weight
  );
  static TextStyle font12morelightgraymedium = TextStyle(
    color: lightgray,
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular, // Regular weight
  );
  static TextStyle font16morelightgraymedium = TextStyle(
    color: lightgray,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular, // Regular weight
  );
  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: gray,
  );
  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: darkBlue
  );
}
