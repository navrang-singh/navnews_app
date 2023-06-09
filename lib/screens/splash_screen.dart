import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:navnews_app/screens/home_screen.dart';
import 'package:navnews_app/widgets/animated_route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  int count = 0;
  late final AnimationController _lottieController;

  @override
  void initState() {
    super.initState();
    _lottieController = AnimationController(vsync: this);
    _lottieController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _lottieController.reverse();
      }
    });
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context , CustomPageRoute(
              transitionDuration: const Duration(milliseconds: 700),
              child: const HomeScreen(),
              begin: const Offset(-1, 0)));
    });
  }

  @override
  void dispose() {
    _lottieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        child: Lottie.asset(
          'assets/splash.json',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          controller: _lottieController,
          onLoaded: (composition) {
            _lottieController
              ..duration = composition.duration
              ..forward();
          },
        ),
      ),
    );
  }
}