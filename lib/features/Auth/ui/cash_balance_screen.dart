import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaultify/gen/assets.gen.dart';
import 'package:vaultify/utils/appTextStyles/app_text_styles.dart';
import 'package:vaultify/utils/app_colors.dart';
import 'package:vaultify/utils/app_dimensions.dart';
import 'package:vaultify/utils/app_strings.dart';

class CashBalanceScreen extends StatelessWidget {
  const CashBalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).viewPadding.top,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDimensions.horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.appName,
                    style: AppTextStyle.acmeF24W400.copyWith(color: AppColors.primary),
                  ),
                  Text(
                    AppStrings.skip,
                    style: AppTextStyle.mulishF20W700.copyWith(color: AppColors.primary),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Text(
              AppStrings.cashBalance,
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
              height: 68.h,
            ),
            Image.asset(Assets.images.coins.path, width: 145.w, height: 150.h,),
            SizedBox(height: 23.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: AppDimensions.horizontalPadding),
              child: Column(
                children: [
                  Text(AppStrings.setUpYourCashBalance, style: AppTextStyle.mulishF24W700,),
                  SizedBox(height: 16.h,),
                  Text(AppStrings.totalCashInPhysicalWallet, textAlign: TextAlign.center, style: AppTextStyle.mulishF16W600,),
                  SizedBox(height: 59.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text( "0", style: AppTextStyle.mulishF40W700.copyWith(color: Theme.of(context).colorScheme.onSurface)),
                    Text( " \$", style: AppTextStyle.mulishF40W700.copyWith(color: Theme.of(context).iconTheme.color)),
                  ],
                )

                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDimensions.horizontalPadding),
              child: ElevatedButton(onPressed: () {
              }, child: const Text(AppStrings.finish)),
            ),
            SizedBox(height: 39.h,)
          ],
        ),
      ),
    );
  }
}
