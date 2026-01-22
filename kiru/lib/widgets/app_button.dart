import 'package:flutter/material.dart';
import 'package:kiru/colors.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color backgroundColor;

  const AppButton({super.key, required this.onTap,this.backgroundColor = AppColors.black});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return SizedBox(
      width: double.infinity,
      height: 58,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(backgroundColor),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ), child: Text('Регистрация',style: TextStyle(color: AppColors.white),),
      )
     );
  }
}
