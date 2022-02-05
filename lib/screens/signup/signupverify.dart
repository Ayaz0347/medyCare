import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/signup/CompleteProfileName.dart';

class Signupverify extends StatefulWidget {
  const Signupverify({Key? key}) : super(key: key);

  @override
  State<Signupverify> createState() => _SignupverifyState();
}

class _SignupverifyState extends State<Signupverify> {
  TextEditingController _verifyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0754a2),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Sign Up',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? devSize.height * 0.0
                  : devSize.height * 0.05,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              //color: Colors.blue,
              width: devSize.width,
              height: devSize.height * 0.08,
              child: Text(
                'Email Verification',
                style: TextStyle(
                    color: Color(0xff585D5E),
                    fontSize: 19,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: devSize.height * 0.05,
            ),
            Container(
              alignment: Alignment.center,
              //color: Colors.blue,
              width: devSize.width * 0.7,
              height: devSize.height * 0.08,
              child: Text(
                'We\'ve emailed your verification link to medycarehealth\@gmail.com',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: devSize.height * 0.15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // background color
                primary: Color(0xff52becb),
                textStyle: const TextStyle(fontSize: 20),
                fixedSize: Size(MediaQuery.of(context).orientation == Orientation.portrait
                    ? devSize.width * 0.8
                    : devSize.width * 0.5, MediaQuery.of(context).orientation == Orientation.portrait
                    ? devSize.height * 0.073
                    : devSize.height * 0.1,),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: const Text('Verify', style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w500
              ),),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => CompleteProfileName(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 0),
                  ),
                );
              },
            ),
            SizedBox(
              height: devSize.height * 0.03,
            ),
            SizedBox(
              height: devSize.height * 0.005,
            ),
            Container(
              child: Text(
                'Resend Verification',
                style: TextStyle(color: Color(0xff5abcbb), fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
