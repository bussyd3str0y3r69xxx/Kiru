import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/favourite/favourite_screen.dart';
import 'package:kiru/fyp/for_you_screen.dart';
import 'package:kiru/home/home_screen.dart';
import 'package:kiru/login_screen.dart';


final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => LoginScreen()),
    ShellRoute(
      builder: (context, state, child) {
        print('state ${state.pageKey} ${state.fullPath} ${state.name}');
        return Scaffold(
          body: child,
          
          bottomNavigationBar: SafeArea(
            top: false,
            child: Container(
              width: double.infinity,
              height: 84,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      context.go('/home');
                    },
                    icon: Icon(Icons.home),
                  ),
                  IconButton(
                    onPressed: () {
                      context.go('/favorites');
                    },
                    icon: Icon(Icons.favorite),
                  ),
                  IconButton(
                    onPressed: () {
                      context.go('/recommendations');
                    },
                    icon: Icon(Icons.foundation),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      routes: [
        GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
        GoRoute(
          path: '/favorites',
          builder: (context, state) => const FavouriteScreen(),
        ),
        
        GoRoute(
          path: '/recommendations',
          builder: (context, state) => const ForYouScreen(),
        ),
      ],
    ),
  ],
);


