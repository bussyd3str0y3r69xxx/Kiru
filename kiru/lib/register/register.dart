import 'package:flutter/material.dart';
import 'package:kiru/colors.dart';

enum Gender{male,female}
class RegisterScreen extends StatelessWidget{
  const RegisterScreen ({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(child: Column(
          spacing: 12,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Логин',
                labelStyle: TextStyle(
                  color: AppColors.black,
                  fontSize: 12,
                ),
                hintText: 'Введите логин'
              ),
              maxLength: 20,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Пароль',
                labelStyle: TextStyle(
                  color: AppColors.black,
                  fontSize: 12,
                ),
                hintText: 'Введите пароль',
              ),
              maxLength: 12,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Потвердите пароль',
                labelStyle: TextStyle(
                  color: AppColors.black,
                  fontSize: 12,
                ),
                hintText: 'Введите снова пароль',
              ),
              maxLength: 12,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RadioListTile<Gender>(
                      title: const Text('Мужской',style: TextStyle(fontSize: 14),),
                      value: Gender.male,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<Gender>(
                      title: const Text('Женский',style: TextStyle(fontSize: 14),),
                      value: Gender.female,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Text('Разрешить уведомления'),
                  Switch(value: false, onChanged: (_){}),
                ],
              ),
              Row(
                children: [
                  Text('Продать мне всё ваше имущество'),
                  Checkbox(value: false, onChanged:(_) {}),
                ],
              ),
              Row(
                children: [
                  Text('Пожалуйста'),
                  Checkbox(value: false, onChanged:(_) {}),
                ],
              ),
              DropdownButton<String>(
                hint: const Text('Выберите страну'),
                items:const [
                DropdownMenuItem( value: 'Казахстан', child: Text('Казахстан')),
                DropdownMenuItem( value: 'Казахстан', child: Text('Казахстан')),
                DropdownMenuItem( value: 'Казахстан', child: Text('Казахстан')),
              ],
              onChanged: (value) {})
          ],
        )),
      ),
    );
  }
}