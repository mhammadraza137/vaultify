import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaultify/commons/widgets/app_drop_down_menu.dart';
import 'package:vaultify/features/Auth/ui/cash_balance_screen.dart';
import 'package:vaultify/gen/assets.gen.dart';
import 'package:vaultify/utils/appTextStyles/app_text_styles.dart';
import 'package:vaultify/utils/app_colors.dart';
import 'package:vaultify/utils/app_dimensions.dart';
import 'package:vaultify/utils/app_strings.dart';

class SelectCurrencyScreen extends StatefulWidget {
  const SelectCurrencyScreen({super.key});

  @override
  State<SelectCurrencyScreen> createState() => _SelectCurrencyScreenState();
}

class _SelectCurrencyScreenState extends State<SelectCurrencyScreen> {
  final TextEditingController _currencyCtrl = TextEditingController(text: "\$ - United States Dollar");

  @override
  void dispose() {
    super.dispose();
    _currencyCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
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
              AppStrings.selectCurrency,
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
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimensions.horizontalPadding),
                child: Column(
                  children: [
                    Image.asset(
                      Assets.images.walletRounded.path,
                      width: 141.w,
                      height: 150.h,
                    ),
                    SizedBox(
                      height: 69.h,
                    ),
                    Text(
                      AppStrings.selectCurrencyDetailsText,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.mulishF16W600,
                    ),
                    SizedBox(height: 23.h,),
                    Material(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(color: AppColors.primary)
                      ),
                      color: Colors.transparent,
                      child: AppDropDownMenu(
                        textStyle: AppTextStyle.mulishF18W800,
                          initialSelection: "\$ - United States Dollar",
                          dropDownMenuEntries: const [
                            DropdownMenuEntry(
                                value: "\$ - United States Dollar",
                                label: "\$ - United States Dollar",
                            )
                          ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDimensions.horizontalPadding),
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CashBalanceScreen(),));
              }, child: const Text(AppStrings.next)),
            ),
            SizedBox(height: 39.h,)
          ],
        ),
      ),
    );
  }
}
