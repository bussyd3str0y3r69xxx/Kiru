import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/fyp/fyp_view.dart';
import 'package:kiru/images.dart';

class ForYouScreen extends StatelessWidget{
  const ForYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.white,
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: Image.asset(AppImages.search,height: 24,width: 24,)),
          title: Row(
            children: [
              FilledButton(onPressed: () {},style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.white),
                
              ), 
              child: Text('Подписки',style: TextStyle(
                color: AppColors.black,
                fontSize: 12,
                fontWeight: FontWeight.w700
              ),)),
              FilledButton(onPressed: () {},style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.black),
                
              ), 
              child: Text('Рекомендации',style: TextStyle(
                color: AppColors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700
              ),)),
            ],
          )
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              FypView()
            ],
          )
        ),
       
    );
    
  }
}