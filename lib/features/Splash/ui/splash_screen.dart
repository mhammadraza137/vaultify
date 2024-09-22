import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vaultify/features/Auth/ui/terms_conditions_screen.dart';
import 'package:vaultify/gen/assets.gen.dart';
import 'package:vaultify/utils/appTextStyles/app_text_styles.dart';
import 'package:vaultify/utils/app_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  @override
  void initState() {
    super.initState();
    goToTermsConditionScreen();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 317.h,),
          Image.asset(Assets.images.logo.path, width: 148.w, height: 155.h,),
          Text(AppStrings.appName, textAlign: TextAlign.center, style: AppTextStyle.acmeF43W400,)
        ],
      ),
    );
  }



  void goToTermsConditionScreen(){
    Future.delayed(const Duration(seconds: 2),() {
      if(mounted){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const TermsConditionsScreen(),));
      }
    },);
  }
}
