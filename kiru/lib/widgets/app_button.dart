import 'package:flutter/material.dart';
import 'package:kiru/colors.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color backgroundColor;
  final bool isLoading;
  final String? text;
  final bool isDisabled;

  const AppButton({
    super.key,
    required this.onTap,
    this.backgroundColor = AppColors.black,
    this.isLoading = false,
    this.isDisabled = false,
    this.text
  });

  @override
  Widget build(BuildContext context) {
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
        ),
        child: Row(
          spacing: 12,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(isLoading)
            CircularProgressIndicator(),
            Text(
              text ?? '',
              style: TextStyle(
                color: AppColors.buttonPrimaryText,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
