import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/core/presentation/auth.dart';
import 'package:kiru/widgets/svg_icons.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
     context.read<AuthBloc>().add(AuthMeEvent());
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc,AuthState>(
      listener: (context, state){
        if ( state is AuthAuthenticatedState){
          context.replace('/home');
        }
        else if (state is AuthUnauthenticatedState){
          context.replace('/login');
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(child: Center(child: SvgIcon.logo())),
      ),
    );
  }
}
