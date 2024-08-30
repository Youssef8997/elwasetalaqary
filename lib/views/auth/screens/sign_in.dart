import 'package:country_code_picker/country_code_picker.dart';
import 'package:elwaset_elaqary_new/utls/extintion.dart';
import 'package:elwaset_elaqary_new/utls/manger/fonts_manger.dart';
import 'package:elwaset_elaqary_new/utls/widget/base_widget.dart';
import 'package:elwaset_elaqary_new/utls/widget/text_form_widget.dart';
import 'package:elwaset_elaqary_new/views/auth/screens/sign_up.dart';
import 'package:elwaset_elaqary_new/views/home_layout/screen/home_layout.dart';
import 'package:flutter/material.dart';

import '../../../utls/manger/assets_manger.dart';
import '../../../utls/manger/colors_manger.dart';
import '../../../utls/widget/button_auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late TextEditingController phoneNumber;
  late TextEditingController password;
  String codeCountry = "+2";
  bool isObservable = false;

  @override
  void initState() {
    phoneNumber = TextEditingController();
    password = TextEditingController();

    super.initState();
  }
@override
  void dispose() {
  phoneNumber.dispose();
  password.dispose();    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.bColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            AssetsManger.authBackGround,
            width: context.width,
            height: context.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: context.height * .1, horizontal: context.width * .1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: context.width * .5,
                    height: 150,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: ColorsManger.bColor,
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        child: Image.asset(
                          "assets/images/Vector 1.png",
                          width: context.width * .83,
                          height: 9,
                        ),
                      ),
                      Container(
                        height: 24,
                        width: 80,
                        margin: EdgeInsets.zero,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                // Start gradient at the top
                                end: Alignment.topCenter,
                                colors: ColorsManger.linerColor,
                                stops: ColorsManger.stops)),
                        child: Text(
                          "تسجيل الدخول",
                          style: FontsManger.largeFont(context).copyWith(
                              color: ColorsManger.mainColor, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "رقم الهاتف",
                  style: FontsManger.mediumFont(context)
                      .copyWith(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormWidget(
                  controller: phoneNumber,
                  isFilled: true,
                  filledColor: Colors.black.withOpacity(.24),
                  hint: "أكتب رقم هاتفك هنا...",
                  suffixActive: CountryCodePicker(
                    padding: EdgeInsets.zero,
                    showFlag: false,
                    textStyle: FontsManger.mediumFont(context)
                        .copyWith(color: Colors.white, fontSize: 12),
                    initialSelection: "+20",
                    onChanged: (value) {
                      if (value.dialCode == "+20") {
                        codeCountry = "+2";
                      } else {
                        codeCountry = value.dialCode!;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "كلمة المرور",
                  style: FontsManger.mediumFont(context)
                      .copyWith(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormWidget(
                    controller: password,
                    isFilled: true,
                    filledColor: Colors.black.withOpacity(.24),
                    hint: "أكتب كلمة المرور هنا...",
                    suffixActive: IconButton(
                        onPressed: () {
                          setState(() {
                            isObservable = !isObservable;
                          });
                        },
                        icon: Icon(
                          isObservable
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Colors.white,
                          size: 20,
                        ))),

                const SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: (){
                    navigatorWid(page: const HomeLayout(), context: context,returnPage: false);
                  },
                  child: Center(
                    child: ButtonAuth(
                      height: 50,
                      width: 150,
                      borderWidth: 5,
                      colorList: ColorsManger.linerColor,
                      containerColor: ColorsManger.bColor,
                      borderRadius: 0,
                      start: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stopsLists: ColorsManger.stops,
                      child: Row(
                        children: [
                          Image.asset("assets/images/arrow.png",width: 20,height: 20,),
                          const SizedBox(width: 5,),
                          Text("تسجيل الدخول",style: FontsManger.mediumFont(context).copyWith(color: Colors.white,fontSize: 14),),
                        ],
                      ),
                      childAlignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                    ),
                  ),
                ),
                 SizedBox(
                  height:context.height*.1 ,
                ),
                Center(child: TextButton(onPressed: (){
                  navigatorWid(page: const SignUpScreen(), context: context,returnPage: false);

                }, child: Text("انا ليس لدى حساب ",style: FontsManger.mediumFont(context).copyWith(color: Colors.white,fontSize: 14),)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
