
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaultify/utils/appTextStyles/app_text_styles.dart';
import 'package:vaultify/utils/app_colors.dart';

abstract class AppTheme{
  ThemeData appThemeData();

  DividerThemeData get dividerThemeData => const DividerThemeData(color: AppColors.greyDC);

  ElevatedButtonThemeData get elevatedButtonThemeData => ElevatedButtonThemeData(
      style: ButtonStyle(
          minimumSize: WidgetStatePropertyAll(Size(1.sw, 55.h)),
          maximumSize: WidgetStatePropertyAll(Size(1.sw, 55.h)),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r), side: BorderSide(width: 1.r, color: AppColors.primary))),
          textStyle: WidgetStatePropertyAll(AppTextStyle.mulishF22W600),
          foregroundColor: const WidgetStatePropertyAll(AppColors.white),
          backgroundColor: const WidgetStatePropertyAll(AppColors.primary)
      ));

}