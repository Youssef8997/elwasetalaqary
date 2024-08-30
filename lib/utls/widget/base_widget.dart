

import 'package:animations/animations.dart';
import 'package:elwaset_elaqary_new/utls/extintion.dart';
import 'package:flutter/material.dart';

import '../manger/colors_manger.dart';

class AnimationNav extends PageRouteBuilder {
  final Widget page;

  AnimationNav({
    required this.page,
  }) : super(
      pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          ) =>
      page,
      transitionDuration: const Duration(
        milliseconds: 400,
      ),
      reverseTransitionDuration: const Duration(
        milliseconds: 400,
      ),
      transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
          ) {
        // animation=CurvedAnimation(parent: animation, curve: Curves.fastLinearToSlowEaseIn,reverseCurve:  Curves.fastOutSlowIn);
        // return FadeScaleTransition(
        //
        //   animation: animation,
        //   child: page,
        // );
        return SharedAxisTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            transitionType: SharedAxisTransitionType.horizontal,
            child: child);
      });
}

navigatorWid(
    {required Widget page,
      required BuildContext context,
      returnPage = false,
      arguments}) {
  return Navigator.pushAndRemoveUntil(
    context,
    AnimationNav(page: page),
        (Route route) => returnPage,
  );
}

class CircularProgressIndicatorWidget extends StatefulWidget {
  const CircularProgressIndicatorWidget({super.key});

  @override
  State<CircularProgressIndicatorWidget> createState() =>
      _CircularProgressIndicatorWidgetState();
}

class _CircularProgressIndicatorWidgetState
    extends State<CircularProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      color: Colors.black.withOpacity(.1),
      child: const Center(
        child: SizedBox(
            height: 100,
            width: 100,
            child: CircularProgressIndicator.adaptive()),
      ),
    );
  }

}
LinearGradient linerBase(){
  return const LinearGradient(
      begin: Alignment.bottomCenter,
      // Start gradient at the top
      end: Alignment.topCenter,
      colors: ColorsManger.linerColor,
      stops: ColorsManger.stops);
}



