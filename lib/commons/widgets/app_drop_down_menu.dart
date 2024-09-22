import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vaultify/gen/assets.gen.dart';
import 'package:vaultify/utils/appTextStyles/app_text_styles.dart';

class AppDropDownMenu extends StatelessWidget {
  const AppDropDownMenu({super.key, this.initialSelection, required this.dropDownMenuEntries, this.hintText, this.onSelected, this.textStyle});

  final dynamic initialSelection;
  final List<DropdownMenuEntry> dropDownMenuEntries;
  final String? hintText;
  final void Function(dynamic)? onSelected;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      textStyle: textStyle ?? AppTextStyle.mulishF16W600,
      hintText: hintText,
      trailingIcon: SvgPicture.asset(Assets.icons.arrowDown, width: 20.r, colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color ?? Colors.black, BlendMode.srcIn),),
      selectedTrailingIcon: SvgPicture.asset(Assets.icons.arrowDown, width: 20.r, colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color ?? Colors.black, BlendMode.srcIn)),
      expandedInsets: const EdgeInsets.symmetric(),
      initialSelection: initialSelection,
      dropdownMenuEntries: dropDownMenuEntries,
      onSelected: onSelected,
    );
  }
}
