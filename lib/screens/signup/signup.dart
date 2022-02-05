import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_app/screens/signup/signupverify.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmController = TextEditingController();
  bool show = false;
  bool showConfirm = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      show = false;
      showConfirm = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0A62B4),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            //height: size.height,

            child: Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.height * 0.05
                        : size.height * 0.1,
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: size.width * 0.5,
                      //height: size.height*0.03,
                      child: const Text("Welcome",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                              color: Colors.black54))),
                  SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.height * 0.008
                        : size.height * 0.01,
                  ),
                  Container(
                      width: size.width * 0.5,
                      // height: size.height*0.05,
                      alignment: Alignment.center,
                      child: const Text(
                          "Please complete your details or use Social Sign in",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              color: Colors.black54))),
                  SizedBox(
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? size.height * 0.05
                          : size.height * 0.1),
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
                      //controller: _controller,
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
                  SizedBox(
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
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
                      //controller: _controller,
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
                  SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.height * 0.03
                        : size.height * 0.06,
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
                      //controller: _controller,
                      obscureText: showConfirm ? false : true,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(fontSize: 13),
                        suffixIcon: IconButton(
                            icon: showConfirm
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
                                showConfirm = !showConfirm;
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
                  SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.height * 0.08
                        : size.height * 0.16,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // background color
                      primary: Color(0xff52becb),
                      textStyle: const TextStyle(fontSize: 20),
                      fixedSize: Size(MediaQuery.of(context).orientation == Orientation.portrait
                          ? size.width * 0.8
                          : size.width * 0.5, MediaQuery.of(context).orientation == Orientation.portrait
                          ? size.height * 0.073
                          : size.height * 0.1,),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: const Text('Next', style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500
                    ),),
                    onPressed: () {

                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => Signupverify(),
                          transitionsBuilder: (c, anim, a2, child) =>
                              FadeTransition(opacity: anim, child: child),
                          transitionDuration: Duration(milliseconds: 0),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? size.height * 0.02
                          : size.height * 0.05),

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
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.height * 0.06
                        : size.height * 0.05,
                  ),
                  Container(
                    width: size.width * 0.7,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.height * 0.06
                        : size.height * 0.12,
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            width: size.width * 0.7,
                            //height: size.height*0.03,
                            child:
                                const Text("By continuing you agree with our ",
                                    style: TextStyle(
                                      //fontWeight: FontWeight.w600,
                                      fontSize: 13.0,
                                      color: Colors.black87,
                                    ))),
                        RichText(
                            text: TextSpan(
                                text: 'Terms & Conditions ',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xFF52becb),
                                ),
                                children: [
                              TextSpan(
                                text: 'and ',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black87,
                                ),
                              ),
                              TextSpan(
                                text: 'Privacy policy',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xFF52becb),
                                ),
                              ),
                            ])),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
