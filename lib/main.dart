import 'package:elwaset_elaqary_new/utls/theme.dart';
import 'package:elwaset_elaqary_new/views/auth/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'helper/shered_prefrince_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreference.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'elwaset elaqary',
      theme: lightTheme(context),
      home: const SplashScreen(),
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale(
            "ar",
          ),
        ],
        locale: const Locale(
          "ar",
        )
    );
  }
}
