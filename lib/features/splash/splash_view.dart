import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:glovvr/features/Auth/login.dart';

import '../../core/app_images/app_images.dart';
import '../../core/keys/keys.dart';
import '../home/view.dart';

class SplashScreen extends StatelessWidget {
  final Widget? nextScreen;

  const SplashScreen({Key? key, this.nextScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
            duration: 2500,
            splashIconSize: 150,
            splash: Image.asset(AppImages.logo),
            nextScreen:  Login(),

            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.white));
  }
}
