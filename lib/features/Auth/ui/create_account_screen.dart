import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vaultify/commons/widgets/app_drop_down_menu.dart';
import 'package:vaultify/features/Auth/ui/login_screen.dart';
import 'package:vaultify/features/Auth/ui/select_currency_screen.dart';
import 'package:vaultify/gen/assets.gen.dart';
import 'package:vaultify/utils/appTextStyles/app_text_styles.dart';
import 'package:vaultify/utils/app_colors.dart';
import 'package:vaultify/utils/app_dimensions.dart';
import 'package:vaultify/utils/app_strings.dart';
import 'package:vaultify/utils/auth_providers.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimensions.horizontalPadding),
                child: Text(
                  AppStrings.appName,
                  style: AppTextStyle.acmeF24W400.copyWith(color: AppColors.primary),
                ),
              ),
              SizedBox(
                height: 21.h,
              ),
              Text(
                AppStrings.createAccount,
                style: AppTextStyle.mulishF24W700,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: const Divider(
                  height: 8,
                ),
              ),
              SizedBox(
                height: 21.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimensions.horizontalPadding),
                child: Column(
                  children: [
                    TextFormField(
                      style: AppTextStyle.mulishF16W600,
                      decoration: InputDecoration(hintText: AppStrings.name),
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    TextFormField(
                      style: AppTextStyle.mulishF16W600,
                      decoration: const InputDecoration(hintText: AppStrings.email),
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    const AppDropDownMenu(
                        dropDownMenuEntries: [
                          DropdownMenuEntry(value: "Male", label: "Male"),
                          DropdownMenuEntry(value: "Female", label: "Female"),
                        ],
                      hintText: AppStrings.gender,
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    TextFormField(
                      style: AppTextStyle.mulishF16W600,
                      decoration: InputDecoration(
                          hintText: AppStrings.password,
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.visibility_off_outlined,
                                size: 20.h,
                              ))),
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    TextFormField(
                      style: AppTextStyle.mulishF16W600,
                      decoration: InputDecoration(
                          hintText: AppStrings.confirmPassword,
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.visibility_off_outlined,
                                size: 20.h,
                              ))),
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    ElevatedButton(onPressed: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const SelectCurrencyScreen(),), (route) => true,);
                    }, child: const Text(AppStrings.signUp)),
                    SizedBox(
                      height: 23.h,
                    ),
                    Row(
                      children: [
                        const Flexible(fit: FlexFit.loose, child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Text(
                            AppStrings.orSignUpWith,
                            style: AppTextStyle.mulishF16W600,
                          ),
                        ),
                        const Flexible(fit: FlexFit.loose, child: Divider())
                      ],
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: AuthProviders.images.map(
                        (e) {
                          return Container(
                            padding: EdgeInsets.all(15.r),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.r), border: Border.all(color: AppColors.grey72)),
                            child: Image.asset(
                              e,
                              width: 30.w,
                              height: 30.h,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          );
                        },
                      ).toList(),
                    ),
                    SizedBox(height: 23.h),
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: AppTextStyle.mulishF16W600.copyWith(color: Theme.of(context).colorScheme.onSurface),
                            children: [
                              const TextSpan(text: AppStrings.alreadyHaveAnAccount),
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const LoginScreen(),
                                          ));
                                    },
                                  text: " ${AppStrings.signIn}",
                                  style: AppTextStyle.mulishF16W600.copyWith(color: AppColors.primary)),
                            ])),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
