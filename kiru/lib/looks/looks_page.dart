import 'package:flutter/material.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/images.dart';

enum DropList {createItem, recognizeItem, createLook}

class LooksPage extends StatelessWidget{
  const LooksPage ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.white,
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        title: Row(
          children: [
            TextButton(onPressed: () {}, child: Text('Вещи',style: TextStyle(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700
            ),)),
            Opacity(
              opacity: 0.45,
               child: TextButton(onPressed: () {}, child: Text('|',style: TextStyle(
                color: AppColors.black,
                fontSize: 19,
                fontWeight: FontWeight.w700
                           ),)),
             ),
             Opacity(
              opacity: 0.45,
               child: TextButton(onPressed: () {}, child: Text('Луки',style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w700
                           ),)),
             ),
          ],
        ),
        actions: [
          PopupMenuButton<DropList>(
            offset: const Offset(0, 50),
            color: AppColors.white,
            constraints: const BoxConstraints(
            minWidth: 250,
            maxWidth: 250,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
            icon: Image.asset(AppImages.create,height: 24,width: 24,),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<DropList>>[
              const PopupMenuItem<DropList>(value: DropList.createItem,child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Создать вещь'),
                  Icon(Icons.layers_outlined, size: 24),      
                ],
              ),),
              const PopupMenuItem<DropList>(value: DropList.recognizeItem,child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Распознать вещь'),
                  Icon(Icons.camera_alt_outlined,size: 24,),
                ],
              ),),
              const PopupMenuItem<DropList>(value: DropList.createLook,child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Создать лук'),
                  Icon(Icons.auto_awesome_outlined,size: 24,)
                ],
              ),),
            ])
        ],
      ),
    );
  }
}