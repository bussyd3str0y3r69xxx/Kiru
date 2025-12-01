
import 'package:flutter/material.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/images.dart';

class ProfileBox extends StatelessWidget{
  const ProfileBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            alignment: Alignment.center,
            width: 345,
            height: 245,
            decoration: BoxDecoration(
              color: AppColors.textcolor,
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          Positioned(
            top: -40,
            left: 0,
            right: 0,
            child: Center(child: Image.asset(AppImages.profile_pic))
            )
          
        ],
      ),
    );
    
  }
}