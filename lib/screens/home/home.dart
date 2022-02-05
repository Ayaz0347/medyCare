import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/screens/contactus/contact_us.dart';
import 'package:flutter_app/screens/home/home_drawer.dart';
import 'package:flutter_app/screens/profile/profile.dart';
import 'package:flutter_app/screens/settings/settings.dart';
import 'package:flutter_app/screens/signin/sign_in.dart';
import 'package:flutter_app/screens/vitals/vitals.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool home =false,  profile  = false, vitals = false, drug = false, vaccine = false ;
  // String? status;
  @override
  void initState() {
    Fluttertoast.showToast(
      msg: "Welcome Back Jane Doe",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 4,
    );
    setState(() {
   //   status = "";
      // home =false;
      // profile  = false;
      // vitals = false;
      // drug = false;
      // vaccine = false ;
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE6E6E6),
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Color(0xff0754a2),
      ),
      drawer: HomeDrawer(),

      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Column(
            children: [
              Container(
                width: size.width,
                height: MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.height
                    : 700,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? size.height * 0.26
                              : size.height * 0.665,
                          width: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? size.width 
                              : size.width,
                          child: Image.asset('assets/images/family.png',
                          ),
                        ),
                        Container(
                            color: Colors.white,
                            //height: size.height*0.065,
                            // width: size.width,
                            height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? size.height * 0.065
                                : size.height * 0.1,
                            width: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? size.width
                                : size.width
                            // child: Image.asset('assets/images/vitalsBlue.png'),
                            ),
                      ],
                    ),
                    Positioned(
                      left: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? size.width * 0.065
                          : size.width * 0.08,
                      top: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? size.height * 0.25
                          : size.height * 0.565,
                      // bottom: 271,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Card(
                                  elevation: 4,
                                  child: Container(
                                    height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                        ? size.height * 0.185
                                        : size.height * 0.4,
                                    width: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                        ? size.width * 0.4
                                        : size.width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: new Material(
                                      color: Colors.transparent,
                                      child: new InkWell(
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            PageRouteBuilder(
                                              pageBuilder: (c, a1, a2) => Vitals(),
                                              transitionsBuilder:
                                                  (c, anim, a2, child) =>
                                                  FadeTransition(
                                                      opacity: anim, child: child),
                                              transitionDuration:
                                              Duration(milliseconds: 0),
                                            ),
                                          );
                                        },
                                        child: new Column(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.height * 0.0
                                                  : size.height * 0.05,
                                            ),
                                            Container(
                                              color: Colors.transparent,
                                              height: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.height * 0.14
                                                  : size.height * 0.2,
                                              width: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.width * 0.15
                                                  : size.width,

                                              child: Image.asset(
                                                  'assets/images/vitalsBlue.png'),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.height * 0
                                                  : size.height * 0.05,
                                            ),
                                            Container(
                                              color: Colors.transparent,
                                              child: Center(
                                                child: Text(
                                                  'Vitals',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                    ),

                                  ),
                                ),
                                SizedBox(
                                  //width: size.width*0.016,

                                  //height: size.height*0.063,
                                  width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? size.width * 0.03
                                      : size.width * 0.02,
                                ),
                                Card(
                                  elevation: 4,
                                  child: Container(
                                    height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                        ? size.height * 0.185
                                        : size.height * 0.4,
                                    width: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                        ? size.width * 0.4
                                        : size.width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: new Material(
                                      color: Colors.transparent,
                                      child: new InkWell(
                                        onTap: (){
                                        },
                                        child: new Column(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.height * 0.0
                                                  : size.height * 0.05,
                                            ),
                                            Container(
                                              color: Colors.transparent,
                                              height: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.height * 0.14
                                                  : size.height * 0.2,
                                              width: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.width * 0.15
                                                  : size.width,

                                              child: Image.asset(
                                                  'assets/images/drugScheduleBlue.png'),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.height * 0
                                                  : size.height * 0.05,
                                            ),
                                            Container(
                                              color: Colors.transparent,
                                              child: Center(
                                                child: Text(
                                                  'Drug Schedule',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                    ),

                                  ),
                                ),

                              ],
                            ),
                            SizedBox(
                              //height: size.height*0.063,
                              height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? size.height * 0.015
                                  : size.height * 0.035,
                            ),
                            Row(
                              children: [
                                Card(
                                  elevation: 4,
                                  child: Container(
                                    height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                        ? size.height * 0.185
                                        : size.height * 0.4,
                                    width: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                        ? size.width * 0.4
                                        : size.width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: new Material(
                                      color: Colors.transparent,
                                      child: new InkWell(
                                        onTap: (){
                                        },
                                        child: new Column(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.height * 0.0
                                                  : size.height * 0.05,
                                            ),
                                            Container(
                                              color: Colors.transparent,
                                              height: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.height * 0.14
                                                  : size.height * 0.2,
                                              width: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.width * 0.15
                                                  : size.width,

                                              child: Image.asset(
                                                  'assets/images/vaccinesBlue.png'),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.height * 0
                                                  : size.height * 0.05,
                                            ),
                                            Container(
                                              color: Colors.transparent,
                                              child: Center(
                                                child: Text(
                                                  'Vaccines',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                    ),

                                  ),
                                ),
                                SizedBox(
                                  //width: size.width*0.016,
                                  width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? size.width * 0.03
                                      : size.width * 0.02,
                                ),
                                Card(
                                  elevation: 4,
                                  child: Container(
                                    height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                        ? size.height * 0.185
                                        : size.height * 0.4,
                                    width: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                        ? size.width * 0.4
                                        : size.width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: new Material(
                                      color: Colors.transparent,
                                      child: new InkWell(
                                        onTap: (){
                                        },
                                        child: new Column(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.height * 0.0
                                                  : size.height * 0.05,
                                            ),
                                            Container(
                                              color: Colors.transparent,
                                              height: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.height * 0.14
                                                  : size.height * 0.2,
                                              width: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.width * 0.15
                                                  : size.width,

                                              child: Image.asset(
                                                  'assets/images/testResultsBlue.png'),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                  .orientation ==
                                                  Orientation.portrait
                                                  ? size.height * 0
                                                  : size.height * 0.05,
                                            ),
                                            Container(
                                              color: Colors.transparent,
                                              child: Center(
                                                child: Text(
                                                  'Test Results',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                    ),

                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              //height: size.height*0.063,
                              height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? size.height * 0.015
                                  : size.height * 0.035,
                            ),
                            Card(
                              elevation: 4,
                              child: Container(
                                height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.height * 0.185
                                    : size.height * 0.4,
                                width: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.width * 0.83
                                    : size.width * 0.83,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: new Material(
                                  color: Colors.transparent,
                                  child: new InkWell(
                                    onTap: (){
                                    },
                                    child: new Column(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                              .orientation ==
                                              Orientation.portrait
                                              ? size.height * 0.0
                                              : size.height * 0.05,
                                        ),
                                        Container(
                                          color: Colors.transparent,
                                          height: MediaQuery.of(context)
                                              .orientation ==
                                              Orientation.portrait
                                              ? size.height * 0.14
                                              : size.height * 0.2,
                                          width: MediaQuery.of(context)
                                              .orientation ==
                                              Orientation.portrait
                                              ? size.width * 0.15
                                              : size.width,

                                          child: Image.asset(
                                              'assets/images/chronicConditions.png'),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                              .orientation ==
                                              Orientation.portrait
                                              ? size.height * 0
                                              : size.height * 0.05,
                                        ),
                                        Container(
                                          color: Colors.transparent,
                                          child: Center(
                                            child: Text(
                                              'Chronic Conditions',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
