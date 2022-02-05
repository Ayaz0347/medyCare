import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:flutter_app/screens/settings/settings.dart';
import 'package:flutter_app/screens/signup/CompleteProfileAddress.dart';
import 'package:flutter_app/screens/signin/sign_in.dart';
import 'package:flutter_app/screens/signup/sign_up_datepacker.dart';

import 'package:flutter_app/screens/signup/signupverify.dart';
import 'package:flutter_app/screens/signup/SelectGender.dart';
import 'package:flutter_app/screens/splash/splash_screen.dart';

import 'screens/forgetpassword/forgetPassword.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static String status = 'home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my first app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      //  primaryColor: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //canvasColor: Colors.transparent
      ),
      home: SplashScreen(),
    );
  }
}
