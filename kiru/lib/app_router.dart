import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/favourite/favourite_screen.dart';
import 'package:kiru/fyp/for_you_screen.dart';
import 'package:kiru/home/home_screen.dart';
import 'package:kiru/login_screen.dart';
import 'package:kiru/looks/looks_page.dart';
import 'package:kiru/register/ui/register.dart';
import 'package:kiru/widgets/svg_icons.dart';


final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => LoginScreen()),
    GoRoute(path: '/register', builder: (context, state) => RegisterScreen()),
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
                    icon: SvgIcon.home(),
                  ),
                  IconButton(
                    onPressed: () {
                      context.go('/favorites');
                    },
                    icon: SvgIcon.favorites(),
                  ),
                  IconButton(
                    onPressed: () {
                      context.go('/recommendations');
                    },
                    icon: SvgIcon.recommendations(),
                  ),
                  IconButton(onPressed: () {context.go('/looks');}, icon: SvgIcon.looks())
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
        GoRoute(path: '/looks', builder: (context, state) => const LooksPage(),)
      ],
    ),
  ],
);


