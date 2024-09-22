import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaultify/utils/appTextStyles/app_text_styles.dart';
import 'package:vaultify/utils/appTheme/app_theme.dart';
import 'package:vaultify/utils/app_colors.dart';

class AppThemeLight extends AppTheme {
  @override
  ThemeData appThemeData() {
    return ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        fontFamily: "Mulish",
        elevatedButtonTheme: elevatedButtonThemeData,
        inputDecorationTheme: inputDecorationTheme,
        textSelectionTheme: textSelectionThemeData,
        checkboxTheme: checkboxThemeData,
        dropdownMenuTheme: dropdownMenuThemeData,
        iconButtonTheme: iconButtonThemeData,
        iconTheme: iconThemeData,
        dividerTheme: dividerThemeData);
  }

  InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
      hintStyle: AppTextStyle.mulishF16W600,
      constraints: BoxConstraints(
        minHeight: 55.h,
      ),
      // isDense: true,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r), borderSide: BorderSide(color: AppColors.greyBorder)),
      outlineBorder: BorderSide(color: AppColors.greyBorder),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r), borderSide: BorderSide(color: AppColors.greyBorder)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r), borderSide: const BorderSide(color: AppColors.grey72)));

  TextSelectionThemeData textSelectionThemeData = const TextSelectionThemeData(cursorColor: AppColors.grey72);

  CheckboxThemeData checkboxThemeData = CheckboxThemeData(
      side: BorderSide(color: AppColors.black, width: 1.5.r),
      shape: const RoundedRectangleBorder(),
      visualDensity:
          const VisualDensity(horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity));

  DropdownMenuThemeData dropdownMenuThemeData = DropdownMenuThemeData(
    textStyle: AppTextStyle.mulishF16W600,
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      constraints: BoxConstraints(maxHeight: 59.h, minHeight: 59.h),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r), borderSide: BorderSide(color: AppColors.greyBorder)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r), borderSide: BorderSide(color: AppColors.greyBorder)),
      outlineBorder: BorderSide(color: AppColors.greyBorder),
      hintStyle: AppTextStyle.mulishF16W600,
    ),
  );

  IconButtonThemeData iconButtonThemeData =
      const IconButtonThemeData(style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(AppColors.grey72)));

  IconThemeData iconThemeData = const IconThemeData(color: AppColors.grey72);
}
