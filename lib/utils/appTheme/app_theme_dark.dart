import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaultify/utils/appTextStyles/app_text_styles.dart';
import 'package:vaultify/utils/appTheme/app_theme.dart';
import 'package:vaultify/utils/app_colors.dart';

class AppThemeDark extends AppTheme {
  @override
  ThemeData appThemeData() {
    return ThemeData(
        scaffoldBackgroundColor: AppColors.black,
        fontFamily: "Mulish",
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.black,
        ),
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
      filled: true,
      fillColor: AppColors.black17,
      constraints: BoxConstraints(minHeight: 55.h),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
      ));

  TextSelectionThemeData textSelectionThemeData = const TextSelectionThemeData(cursorColor: AppColors.grey72);

  CheckboxThemeData checkboxThemeData = CheckboxThemeData(
      side: BorderSide(color: AppColors.white, width: 1.5.r),
      shape: const RoundedRectangleBorder(),
      visualDensity:
          const VisualDensity(horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity));

  DropdownMenuThemeData dropdownMenuThemeData = DropdownMenuThemeData(
    textStyle: AppTextStyle.mulishF16W600,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.black17,
      constraints: BoxConstraints(maxHeight: 59.h, minHeight: 59.h),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      hintStyle: AppTextStyle.mulishF16W600,
    ),
  );

  IconButtonThemeData iconButtonThemeData =
      const IconButtonThemeData(style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(AppColors.white)));

  IconThemeData iconThemeData = const IconThemeData(color: AppColors.white);
}
