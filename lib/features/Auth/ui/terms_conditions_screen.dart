import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaultify/commons/widgets/app_outlined_button.dart';
import 'package:vaultify/features/Auth/ui/login_screen.dart';
import 'package:vaultify/gen/assets.gen.dart';
import 'package:vaultify/utils/appTextStyles/app_text_styles.dart';
import 'package:vaultify/utils/app_colors.dart';
import 'package:vaultify/utils/app_dimensions.dart';
import 'package:vaultify/utils/app_strings.dart';

class TermsConditionsScreen extends StatefulWidget {
  const TermsConditionsScreen({super.key});

  @override
  State<TermsConditionsScreen> createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint("build");
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.horizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 317.h,
            ),
            Image.asset(
              Assets.images.logo.path,
              width: 148.w,
              height: 155.h,
            ),
            Text(
              AppStrings.appName,
              textAlign: TextAlign.center,
              style: AppTextStyle.acmeF43W400,
            ),
            SizedBox(
              height: 92.h,
            ),
            RichText(
              textAlign: TextAlign.center,
                text: TextSpan(
                    style: AppTextStyle.mulishF13W600.copyWith(color: Theme.of(context).colorScheme.onSurface),
                    children: [
                  const TextSpan(text: AppStrings.byPressingAcceptYouAgree),
                  TextSpan(
                      text: " ${AppStrings.termsAndConditions}",
                      style: AppTextStyle.mulishF13W600.copyWith(color: AppColors.primary)),
                  const TextSpan(text: " ${AppStrings.and}"),
                  TextSpan(
                      text: " ${AppStrings.privacyPolicy}",
                      style: AppTextStyle.mulishF13W600.copyWith(color: AppColors.primary)),
                ])),
            SizedBox(height: 14.h,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
            }, child: const Text(AppStrings.accept)),
            SizedBox(height: 21.h,),
            AppOutlinedButton(
                onTap: () {

                },
                text: AppStrings.decline)
          ],
        ),
      ),
    );
  }
}
