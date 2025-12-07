import 'package:flutter/material.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/images.dart';
import 'package:kiru/home/home_icons.dart';

class ProfileBox extends StatelessWidget{
  const ProfileBox({super.key});

  Widget statRow(String count,String label){
    
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       Text(count,style: TextStyle(
          color: AppColors.black,
          fontSize: 16,
          fontWeight: FontWeight.w700
       ), ),

       SizedBox(height: 1),

       Opacity(opacity: 0.45,
       child:Text(label, style: TextStyle(
        color: AppColors.black,
        fontSize: 10,
        fontWeight: FontWeight.w500
       ),),
       )
       
    ],);
  }
  @override 
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.only(top: 55),
            width: 354,
            height: 245,
            decoration: BoxDecoration(
              color: AppColors.textcolor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              spacing: 8,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bloodstyle',style: TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                    Image.asset(AppImages.check,height: 12,width: 12,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 31,
                  children: [
                    statRow('3,8K','Подписчики'),
                    statRow('5,4K', 'Лайки'),
                    statRow('7', 'Публикации')
                  ]
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 13,
                children: [
                  SizedBox(
                    height: 40,
                    child: FilledButton(onPressed: () {}, style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(AppColors.homeScreenButton) 
                    ), 
                    child: Text('Редактировать',style: TextStyle(
                      color: AppColors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w700
                    ),)
                    ),
                  ),
                  HomeIconsWithBackground(icon: AppImages.telegram),
                  HomeIconsWithBackground(icon: AppImages.instagram)
                ],),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Сотворю твой успех с помощью 100+ огненных образов. Моими капсулами пользуются более 2500 девушек — присоединяйся и ты!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.3, 
                    ),
                  ),
                )
                
              ],
            ),
          ),
          
          
          Positioned(
            top: -40,
            left: 0,
            right: 0,
            child: Center(child: Image.asset(AppImages.profilePic,height: 90,width: 90,))
            ),
            
          
        ],
      ),
    );
    
  }
}