import 'package:elwaset_elaqary_new/utls/extintion.dart';
import 'package:elwaset_elaqary_new/utls/manger/colors_manger.dart';
import 'package:elwaset_elaqary_new/utls/manger/fonts_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utls/manger/assets_manger.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.bColor,
      body: Stack(
        children: [
          Image.asset(
            AssetsManger.authBackGround,
            width: context.width,
            height: context.height,
            fit: BoxFit.fill,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: context.width * .5,
                height: 150,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  color: ColorsManger.bColor,
                  child: Image.asset(
                    "assets/images/Vector 1.png",
                    width: context.width * .8,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "البحث عن عقار مناسب لك اصبح الأن سهلا",
                style: FontsManger.largeFont(context)
                    .copyWith(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: context.width * .75,
                child: Text(
                  "مع الوسيط العقارى يوفر لك البحث السهل عن العقار الذي تريده بالموقع الجغرافى الذي تريدها",
                  style: FontsManger.mediumFont(context).copyWith(
                      color: Colors.white.withOpacity(.7), fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
