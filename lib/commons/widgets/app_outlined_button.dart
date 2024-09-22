import 'package:flutter/material.dart';
import 'package:vaultify/utils/app_colors.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({super.key, required this.text, this.onTap});
  
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    if(Theme.of(context).brightness == Brightness.light){
      return ElevatedButton(
          style: ButtonStyle(
              backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
              shadowColor: const WidgetStatePropertyAll(Colors.transparent),
              foregroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.onSurface)
          ),
          onPressed: onTap,
          child: Text(text));
      
    } else{
      return ElevatedButton(
          style: ButtonStyle(
            side: const WidgetStatePropertyAll(BorderSide(color: AppColors.black17)),
              backgroundColor: const WidgetStatePropertyAll(AppColors.black17),
              shadowColor: const WidgetStatePropertyAll(Colors.transparent),
              foregroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.onSurface),
          ),
          onPressed: onTap,
    child: Text(text));
      
    }
  }
}
