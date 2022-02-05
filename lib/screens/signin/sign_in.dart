import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:flutter_app/screens/signup/signup.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../forgetpassword/forgetPassword.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool show = false;
  bool isValid = false;

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      show = false;
      isValid = false;
      MyApp.status = 'home';
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0754a2),
        title: Text('Sign In'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                  height:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? size.height * 0.02
                          : size.height * 0.04),
              Container(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0.32
                        : size.height * 0.62,
                alignment: Alignment.center,
                // height: size.height*.28,
                width: size.width * .90,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? size.height * 0.18
                            : size.height * 0.3,
                        width: size.width * .30,
                        child: Image.asset(
                          'assets/images/medical.png',
                          //  height: size.height*.17,
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? size.height * 0.02
                          : size.height * 0.04,
                    ),
                    Container(
                        alignment: Alignment.center,
                        width: size.width * 0.5,
                        //height: size.height*0.03,
                        child: const Text("Welcome Back",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                                color: Colors.black54))),
                    SizedBox(
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? size.height * 0.005
                          : size.height * 0.01,
                    ),
                    Container(
                        width: size.width * 0.6,
                        // height: size.height*0.05,
                        alignment: Alignment.center,
                        child: const Text(
                            "Sign in with your email and password or with social media",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11.0,
                                color: Colors.black54))),
                    SizedBox(
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? size.height * 0.02
                            : size.height * 0.04),
                  ],
                ),
              ),
              Container(
                height:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.height * 0.075
                    : size.height * 0.1,
                width:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.width * 0.8
                    : size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 13),
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
              // Container(
              //   width:
              //       MediaQuery.of(context).orientation == Orientation.portrait
              //           ? size.width * 0.9
              //           : size.width * 0.5,
              //   height:
              //       MediaQuery.of(context).orientation == Orientation.portrait
              //           ? size.height * 0.07
              //           : size.height * 0.14,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(5),
              //   ),
              //   child: TextFormField(
              //      controller: _emailController,
              //     decoration: InputDecoration(
              //         labelText: 'Email',
              //         labelStyle: TextStyle(fontSize: 13),
              //         enabledBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: Colors.grey, width: 1)),
              //         errorBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.all(Radius.circular(4.0)),
              //             borderSide: BorderSide(color: Colors.red, width: 1)),
              //         focusedBorder: OutlineInputBorder(
              //             borderSide:
              //                 BorderSide(color: Color(0xFF0A62B4), width: 2)),
              //         disabledBorder: InputBorder.none,
              //         contentPadding:
              //             EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              //         fillColor: isValid ? Colors.amberAccent.withOpacity(0.6) : Colors.white),
              //     onChanged: (value) {
              //       String pattern =
              //           r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              //       RegExp regex = new RegExp(pattern);
              //       if((regex.hasMatch(value.toString())) ==
              //           true){
              //         setState(() {
              //           isValid = true;
              //         });
              //       } else {
              //         setState(() {
              //           isValid = false;
              //         });
              //       }
              //     },
              //     onFieldSubmitted: (value){
              //       String pattern =
              //           r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              //       RegExp regex = new RegExp(pattern);
              //       if((regex.hasMatch(value.toString())) ==
              //           true){
              //         setState(() {
              //           isValid = true;
              //         });
              //       } else {
              //         setState(() {
              //           isValid = false;
              //         });
              //       }
              //     },
              //     //validator: (value){
              //     //   if(!EmailValidator.validate(_emailController.text)){
              //     //     return 'Please provide valid email';
              //     //   }
              //     //   else
              //     //     return  null;
              //     // },
              //   ),
              // ),
              SizedBox(
                  height:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? size.height * 0.03
                          : size.height * 0.06),
              Container(
                height:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.height * 0.075
                    : size.height * 0.1,
                width:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.width * 0.8
                    : size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  obscureText: show ? false : true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 13),
                    suffixIcon: IconButton(
                        icon: show
                            ? Icon(
                          Icons.visibility,
                          size: 20,
                        )
                            : Icon(
                          Icons.visibility_off,
                          size: 20,
                        ),
                        splashColor: Colors.grey,
                        onPressed: () {
                          setState(() {
                            show = !show;
                          });
                        }),
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
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                    alignment: Alignment.centerRight,
                    //  color: Colors.green,
                    height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0.075
                        : size.height * 0.1,
                    width:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.width * 0.8
                        : size.width * 0.5,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (c, a1, a2) => ForgetPassword(),
                            transitionsBuilder: (c, anim, a2, child) =>
                                FadeTransition(opacity: anim, child: child),
                            transitionDuration: Duration(milliseconds: 0),
                          ),
                        );
                      },
                      child: Text(
                        'Forgot Password',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff5abcbb)),
                      ),
                    )),
              ),
              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0
                        : size.height * 0.05,
              ),
              Container(
                height:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.height * 0.075
                    : size.height * 0.1,
                width:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.width * 0.8
                    : size.width * 0.5,
                //  height: size.height*.07,
                // width: size.width*.90,
                // width:
                //     MediaQuery.of(context).orientation == Orientation.portrait
                //         ? size.width * 0.9
                //         : size.width * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // background color
                        primary: Color(0xff52becb),
                        textStyle: const TextStyle(fontSize: 20),
                        fixedSize: Size(
                          MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.width * 0.375
                              : size.width * 0.23,
                          MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.07
                              : size.height * 0.14,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: Text('Sign In',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      onPressed: () {
                        String pattern =
                            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                        RegExp regex = new RegExp(pattern);

                        if (_emailController.text.isEmpty) {
                          Fluttertoast.showToast(
                            msg: "Enter Email Address",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            textColor: Colors.white,
                            fontSize: 12,
                            timeInSecForIosWeb: 4,
                          );
                        }
                        //   return 'Enter Email Address';

                        else if (_emailController.text.isNotEmpty) {


                          if ((regex.hasMatch(_emailController.text.trim())) ==
                              true && _passwordController.text.length >= 8) {

                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (c, a1, a2) => Home(),
                                transitionsBuilder: (c, anim, a2, child) =>
                                    FadeTransition(opacity: anim, child: child),
                                transitionDuration: Duration(milliseconds: 0),
                              ),
                            );
                          }
                          else {

                            if(!regex.hasMatch(_emailController.text.trim())){
                              Fluttertoast.showToast(
                                msg: "Wrong email address kindly enter valid email!",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                textColor: Colors.white,
                                fontSize: 12,
                                timeInSecForIosWeb: 4,
                              );

                            }
                            else if(_passwordController.text.length < 8){
                              Fluttertoast.showToast(
                                msg: "Password must be at least 8 character!",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                textColor: Colors.white,
                                fontSize: 12,
                                timeInSecForIosWeb: 4,
                              );
                            }
                          }
                        }
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // background color
                        primary: Color(0xFF0754a2),
                        textStyle: const TextStyle(fontSize: 20),
                        fixedSize: Size(
                          MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.width * 0.375
                              : size.width * 0.23,
                          MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.07
                              : size.height * 0.14,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: Text('Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (c, a1, a2) => SignUp(),
                            transitionsBuilder: (c, anim, a2, child) =>
                                FadeTransition(opacity: anim, child: child),
                            transitionDuration: Duration(milliseconds: 0),
                          ),
                        );
                      },
                    ),
                    // Container(
                    //     alignment: Alignment.center,
                    //     decoration: BoxDecoration(
                    //       color: Color(0xFF0754a2),
                    //       borderRadius: BorderRadius.all(Radius.circular(05)),
                    //     ),
                    //     // height: size.height*.06,
                    //     height: MediaQuery.of(context).orientation ==
                    //             Orientation.portrait
                    //         ? size.height * 0.07
                    //         : size.height * 0.14,
                    //     //width: size.width*.42,
                    //     width: MediaQuery.of(context).orientation ==
                    //             Orientation.portrait
                    //         ? size.width * 0.42
                    //         : size.width * 0.23,
                    //     child: InkWell(
                    //       onTap: () {
                    //         Navigator.push(
                    //           context,
                    //           PageRouteBuilder(
                    //             pageBuilder: (c, a1, a2) => SignUp(),
                    //             transitionsBuilder: (c, anim, a2, child) =>
                    //                 FadeTransition(opacity: anim, child: child),
                    //             transitionDuration: Duration(milliseconds: 0),
                    //           ),
                    //         );
                    //       },
                    //       child: Text('Sign Up',
                    //           textAlign: TextAlign.center,
                    //           style: TextStyle(
                    //               fontSize: 15,
                    //               fontWeight: FontWeight.w600,
                    //               color: Colors.white)),
                    //     ))
                  ],
                ),
              ),
              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0.035
                        : size.height * 0.07,
                width: size.width * .92,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // background color
                  primary: Colors.white,
                  // textStyle: const TextStyle(fontSize: 20),
                  fixedSize: Size(MediaQuery.of(context).orientation == Orientation.portrait
                      ? size.width * 0.8
                      : size.width * 0.5,
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0.073
                        : size.height * 0.1,),

                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).orientation ==
                          Orientation.portrait
                          ? size.width * 0.08
                          : size.width * 0.12,
                      height: MediaQuery.of(context).orientation ==
                          Orientation.portrait
                          ? size.height * 0.03
                          : size.height * 0.08,
                      // height: size.height*.03,
                      //   width: size.width*.24,
                      child: Image.asset(
                        'assets/images/search.png', //height: size.height*.03,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      //height: size.height*.05,
                      height: MediaQuery.of(context).orientation ==
                          Orientation.portrait
                          ? size.height * 0.05
                          : size.height * 0.08,
                      width: MediaQuery.of(context).orientation ==
                          Orientation.portrait
                          ? size.width * 0.57
                          : size.width * 0.30,
                      color: Colors.white,

                      // width: size.width*.45,
                      child: Text('Sign in with Google',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87)),
                    )
                  ],
                ),
                onPressed: () {

                },
              ),
              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0.02
                        : size.height * 0.05,
              ),
              Container(
                width: size.width * 0.7,
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0.06
                        : size.height * 0.12,
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        width: size.width * 0.7,
                        //height: size.height*0.03,
                        child: const Text("By continuing you agree with our ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.black87))),
                    RichText(
                        text: TextSpan(
                            text: 'Terms & Conditions ',
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Color(0xFF52becb),
                            ),
                            children: [
                          TextSpan(
                            text: 'and ',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black87,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy policy',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFF52becb),
                            ),
                          ),
                        ])),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
