import 'package:flutter/material.dart';

class ButtonAuth extends StatelessWidget {
  final List<Color>? colorList;
  final List<double>? stopsLists;
  final double? height;
  final double? width;
  final double? borderWidth;
  final Alignment? start;
  final Alignment? end;
  final Color? containerColor;
  final double? borderRadius;
  final Widget? child;
  final Alignment? childAlignment;
  final EdgeInsets? padding;
  const ButtonAuth(
      {super.key,
      this.colorList = const [],
      this.stopsLists = const [],
      this.height = 0,
      this.width = 0,
      this.borderWidth = 0,
      this.start = Alignment.topLeft,
      this.end = Alignment.bottomRight,
      this.containerColor = Colors.transparent,
      this.borderRadius = 0,
      this.child = const SizedBox(
        height: 0,
        width: 0,
      ),
      this.childAlignment = Alignment.center,
      this.padding = const EdgeInsets.all(0)});



  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        gradient: LinearGradient(
          colors: (colorList ?? []).isEmpty
              ? [Colors.white, Colors.black]
              : colorList!,
          stops: stopsLists,
          begin: start!,
          end: end!,
        ),
      ),
      child: Container(
        height: height! - borderWidth!,
        width: width! - borderWidth!,
        padding: padding,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        ),
        alignment: childAlignment,
        child: child,
      ),
    );
  }
}
