import 'package:flutter/material.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/images.dart';

class FypView extends StatelessWidget{
  const FypView({super.key});

static const List<String> images = [
  AppImages.fypOne,
  AppImages.fypTwo,
  AppImages.fypThree,
  AppImages.fypFour,
];
 Widget postGrid(String imageName){
  return Stack(
  children: [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(image: AssetImage(imageName),
        fit: BoxFit.cover,
        )
        
      ),
    ),
    Positioned(
      bottom: 8,
      right: 8,
      child: Container(
        padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.favorite_border,
            size: 20,
            color: Colors.black,
          ),
        ),
    )
  ],
  );
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 345,
        decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14),
        ),
      
          child: 
                  GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.all(18),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    ),
                    itemCount: images.length, 
                    itemBuilder: (context,index){
                      return postGrid(images[index]);
                    }),
          
            
        
      ),
    );
  }
}