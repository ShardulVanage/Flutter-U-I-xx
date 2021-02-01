import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// ignore: must_be_immutable
class SplashC extends HookWidget {
  var model = SchedulerBinding.instance;

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController();
    return Container(
      color: Color.fromRGBO(84, 75, 96, 1),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Lottie.asset('assets/lottie/campfof.json',
          controller: animationController, onLoaded: (compositon) {
        animationController
          ..duration = compositon.duration
          ..forward();
        animationController.addStatusListener((status) {
          if (status == AnimationStatus.completed) {}
        });
      }),
    );
  }
}
