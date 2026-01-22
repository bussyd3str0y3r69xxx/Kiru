import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/register/bloc/send_status_bloc/send_status_bloc.dart';
import 'package:kiru/widgets/app_button.dart';

enum Gender{male,female}
class RegisterScreen extends StatelessWidget{
  const RegisterScreen ({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocProvider(
            create: (BuildContext context) => SendStatusBloc(),
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
                Spacer(),
                BlocBuilder(builder: (context,state){
                  Color buttonColor = AppColors.black;
                  if (state is SendStatusStateDisabled){
                    buttonColor = AppColors.black.withOpacity(0.5);
                  }
                  
                  return AppButton(onTap:(){},backgroundColor: buttonColor,);
                })
              ],
            )),
          ),
        ),
      ),
    );
  }
}