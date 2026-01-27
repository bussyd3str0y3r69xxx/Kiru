import 'package:flutter/widgets.dart';
import 'package:kiru/widgets/app_button.dart';

class AppDataError extends StatelessWidget {
  const AppDataError({
    required this.onRepeat,
    this.text = 'Что-то пошло не так',
    super.key,
  });

  final String text;
  final VoidCallback onRepeat;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const  EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        AppButton(onTap: onRepeat, text: 'Попробовать снова',) ,
      ],
    ),
    );
  }
}
