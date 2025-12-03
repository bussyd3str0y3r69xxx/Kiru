
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
            width: 354,
            height: 976,
            decoration: BoxDecoration(
              color: AppColors.textcolor,
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          Positioned(
            top: -300,
            left: 0,
            right: 0,
            child: Center(child: Image.asset(AppImages.profilePic))
            )
          
        ],
      ),
    );
    
  }
}