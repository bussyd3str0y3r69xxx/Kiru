import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/images.dart';

class LooksPageView extends StatelessWidget{
  const LooksPageView({super.key});
static const List<Map<String, dynamic>> images = [
    {
      'image': AppImages.shoeOne,
      'height': 170.0,
      'category': 'Кроссовки',
      'name': 'Yezzy 700 Wave Runner',
      'brand': 'Adidas'
    },
    {
      'image': AppImages.coat,
      'height': 170.0,
      'category': 'Пуховик',
      'name': '1996 Retro Nuptse Jacket',
      'brand': 'The North Face'
    },
    {
      'image': AppImages.hat,
      'height': 170.0,
      'category': 'Панама',
      'name': 'Bucket Hat',
      'brand': 'Nike'
    },
    {
      'image': AppImages.shirt,
      'height': 170.0,
      'category': 'Футболка',
      'name': 'Regular T-Shirt',
      'brand': 'Stussy'
    },
    {
      'image': AppImages.shoeTwo,
      'height': 170.0,
      'category': 'Кроссовки',
      'name': 'Yezzy 700 Wave Runner',
      'brand': 'Adidas'
    },
    {
      'image': AppImages.pants,
      'height': 170.0,
      'category': 'Штаны',
      'name': 'Just normal pants',
      'brand': 'Noname'
    },
  ];

  Widget postGrid(String imageName, double height,String category,String name,String brand){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  image: AssetImage(imageName),
                  fit: BoxFit.contain
                ),
              ),
            ),
            SizedBox(height: 4,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                opacity: 0.70,
                child: Text(category,style: TextStyle(
                color: AppColors.black,
                fontSize: 11,
                fontWeight: FontWeight.w600
                ),),
                ),
                Text(name,style: TextStyle(
                color: AppColors.black,
                fontSize: 12,
                fontWeight: FontWeight.w700
                ),),
                Opacity(
                opacity: 0.50,
                child: Text(brand,style: TextStyle(
                color: AppColors.black,
                fontSize: 11,
                fontWeight: FontWeight.w700
                ),),
                ),
                
              ],
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
        child: MasonryGridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.all(18),
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          itemCount: images.length,
          itemBuilder: (context, index) {
            final item = images[index];
            return postGrid(
              item['image'],
              item['height'],
              item['category'],
              item['name'],
              item['brand'],
            );
          },
        ),
      ),
    );
  }
}