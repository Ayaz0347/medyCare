import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/signin/sign_in.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController _emailController = TextEditingController();
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
          'Forgot Password',
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
                'Forgot Password',
                style: TextStyle(
                    color: Color(0xff585D5E),
                    fontSize: 19,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              alignment: Alignment.center,
              //color: Colors.blue,
              width: devSize.width * 0.7,
              height: devSize.height * 0.08,
              child: Text(
                'Please enter your email and we will send your password reset details',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff585D5E),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: devSize.height * 0.08,
            ),
            Container(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? devSize.height * 0.066
                  : devSize.height * 0.11,
              width: MediaQuery.of(context).orientation == Orientation.portrait
                  ? devSize.width * 0.8
                  : devSize.width * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 13),
                    // suffixIcon: IconButton(
                    //     icon: Icon(Icons.remove_red_eye_rounded,size: 20,),
                    //     splashColor: Colors.grey,
                    //     onPressed: () {

                    // }),

                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF0A62B4), width: 2)),
                    contentPadding: EdgeInsets.all(
                      8,
                    ),
                    ),
              ),
            ),
            SizedBox(
              height: devSize.height * 0.12,
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
              child: const Text('Reset Password', style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500
              ),),
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Password Reset Email Sent!",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  textColor: Colors.white,
                  fontSize: 12,
                  timeInSecForIosWeb: 4,
                );
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => Signin(),
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
            Container(
              child: Text(
                'Don\'t have an account?',
                style: TextStyle(color: Color(0xff585D5E), fontSize: 13),
              ),
            ),
            SizedBox(
              height: devSize.height * 0.005,
            ),
            Container(
              child: Text(
                'SignUp',
                style: TextStyle(color: Color(0xff52becb), fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
