import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiru/core/data/auth_repository.dart';
import 'package:kiru/core/presentation/auth.dart';
import 'package:kiru/favourite/favourite_screen.dart';
import 'package:kiru/fyp/for_you_screen.dart';
import 'package:kiru/home/home_screen.dart';
import 'package:kiru/login_screen.dart';
import 'package:kiru/core/router/app_router.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
    return BlocProvider(
      create: (BuildContext context) => AuthBloc(AuthRepository()),
      child: MaterialApp.router(
          routerConfig: router,
          
      ),
    );
  }
}
