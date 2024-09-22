import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaultify/features/Splash/ui/splash_screen.dart';
import 'package:vaultify/utils/appTheme/app_theme_dark.dart';
import 'package:vaultify/utils/appTheme/app_theme_light.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(390, 844));
    return MaterialApp(
      theme: AppThemeLight().appThemeData(),
      darkTheme: AppThemeDark().appThemeData(),
      themeMode: ThemeMode.system,
      // theme: AppThemeDark().appThemeData(),
      home: const SplashScreen(),
    );
  }
}
