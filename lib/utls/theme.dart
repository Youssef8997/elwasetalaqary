import 'package:elwaset_elaqary_new/utls/extintion.dart';
import 'package:elwaset_elaqary_new/utls/manger/colors_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'manger/fonts_manger.dart';

const fontFamily = "Almarai";

ThemeData lightTheme(BuildContext context) => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      useMaterial3: false,
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.white,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light),
        toolbarHeight: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              alignment: Alignment.center,
              backgroundColor:
                  const MaterialStatePropertyAll(Color(0xff35A85B)),
              textStyle: const MaterialStatePropertyAll(TextStyle(
                  color: Colors.white,
                  fontWeight: WeightManger.semiBold,
                  fontSize: 16,
                  fontFamily: fontFamily)),
              foregroundColor: const MaterialStatePropertyAll(Colors.white),
              fixedSize: MaterialStatePropertyAll(
                Size(351, context.height * .07),
              ),
              elevation: const MaterialStatePropertyAll(0),
              shape: const MaterialStatePropertyAll(StadiumBorder()),
              enableFeedback: true,
              // backgroundColor: const MaterialStatePropertyAll(ColorsManger.primaryColors),
              padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                  vertical: context.height * .01, horizontal: 24)))),
      primaryColor: ColorsManger.bColor,
      textTheme: const TextTheme(
          displaySmall: TextStyle(
              color: Colors.black,
              fontWeight: WeightManger.regular,
              fontSize: 12,
              fontFamily: fontFamily),
          displayLarge: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: WeightManger.bold,
            fontFamily: fontFamily,
          ),
          displayMedium: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: fontFamily,
              fontWeight: WeightManger.medium),
          bodyLarge: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontFamily: fontFamily,
              fontWeight: WeightManger.black),
          titleLarge: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: fontFamily,
            fontWeight: WeightManger.semiBold,
          )),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: Colors.black),
    );
