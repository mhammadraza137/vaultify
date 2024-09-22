import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaultify/features/Auth/ui/create_account_screen.dart';
import 'package:vaultify/gen/assets.gen.dart';
import 'package:vaultify/utils/appTextStyles/app_text_styles.dart';
import 'package:vaultify/utils/app_colors.dart';
import 'package:vaultify/utils/app_dimensions.dart';
import 'package:vaultify/utils/app_strings.dart';
import 'package:vaultify/utils/auth_providers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: AppDimensions.horizontalPadding,
            right: AppDimensions.horizontalPadding,
            top: MediaQuery.of(context).viewPadding.top),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppStrings.appName,
                style: AppTextStyle.acmeF24W400.copyWith(color: AppColors.primary),
              ),
              SizedBox(
                height: 58.h,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    Assets.images.walletOutline.path,
                    width: 114.w,
                    height: 121.h,
                  )),
              SizedBox(height: 45.h,),
              TextFormField(
                style: AppTextStyle.mulishF16W600,
                decoration: InputDecoration(
                  hintText: AppStrings.emailOrUserName,
                ),
              ),
              SizedBox(height: 23.h,),
              TextFormField(
                style: AppTextStyle.mulishF16W600,
                decoration: InputDecoration(
                  hintText: AppStrings.password,
                  suffixIcon: IconButton(
                      onPressed: () {

                      },
                      icon: Icon(Icons.visibility_off_outlined,size: 20.h,))
                ),
              ),
              SizedBox(height: 23.h,),
              Row(
                children: [
                  Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: rememberMe,
                    onChanged: (value) {
                    setState(() {
                      rememberMe = value!;
                    });
                  },),
                  SizedBox(width: 10.w,),
                  Text(AppStrings.rememberMe, style: AppTextStyle.mulishF16W600,),
                  Expanded(
                      child: Text(
                        AppStrings.forgotPassword,
                        textAlign: TextAlign.end,
                        style: AppTextStyle.mulishF16W600.copyWith(color: AppColors.primary),)),
                ],
              ),
              SizedBox(height: 23.h,),
              ElevatedButton(onPressed: () {

              }, child: const Text(AppStrings.signIn)),
              SizedBox(height: 23.h,),
              Row(
                children: [
                  const Flexible(fit: FlexFit.loose,child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Text(AppStrings.orSignUpWith, style: AppTextStyle.mulishF16W600,),
                  ),
                  const Flexible(fit: FlexFit.loose,child: Divider())
                ],
              ),
              SizedBox(height: 23.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: AuthProviders.images.map((e) {
                  return Container(
                    padding: EdgeInsets.all(15.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      border: Border.all(color: AppColors.grey72)
                    ),
                    child: Image.asset(e, width: 30.w, height: 30.h,color: Theme.of(context).colorScheme.onSurface,),
                  );
                },).toList(),
              ),
              SizedBox(height: 23.h),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: AppTextStyle.mulishF16W600.copyWith(color: Theme.of(context).colorScheme.onSurface),
                      children: [
                        const TextSpan(text: AppStrings.doNotHaveAnAccount),
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccountScreen(),));
                          },
                            text: " ${AppStrings.signUp}",
                            style: AppTextStyle.mulishF16W600.copyWith(color: AppColors.primary)),
                      ])),

            ],
          ),
        ),
      ),
    );
  }
}
