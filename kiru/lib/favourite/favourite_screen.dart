import 'package:flutter/material.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/favourite/favourite_view.dart';
import 'package:kiru/home/post_view.dart';
import 'package:kiru/images.dart';

class FavouriteScreen extends StatelessWidget{
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.white,
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: Image.asset(AppImages.search,height: 24,width: 24,)),
          title: Text('Избранное',style: TextStyle(
            color: AppColors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700
          ),),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              FavouriteView()
            ],
          ),
        ),
    ));
    
  }
}