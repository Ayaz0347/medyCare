import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/screens/contactus/contact_us.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:flutter_app/screens/profile/profile.dart';
import 'package:flutter_app/screens/settings/settings.dart';
import 'package:flutter_app/screens/signin/sign_in.dart';
import 'package:flutter_app/screens/vitals/vitals.dart';
class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
 // String? status;
 //  @override
 //  void initState() {
 //    setState(() {
 //      status = "";
 //      // home =false;
 //      // profile  = false;
 //      // vitals = false;
 //      // drug = false;
 //      // vaccine = false ;
 //    });
 //    // TODO: implement initState
 //    super.initState();
 //  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient:
                  //RadialGradient(


                  LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xff0754a2), Color(0xff5cbeb6)])

              ),
              child: Container(
                width: size.width,
                alignment: Alignment.topLeft,
                child: Column(
                    children:[
                      Container(
                        width: size.width,
                        alignment: Alignment.topLeft,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                //width: size.width,

                                alignment: Alignment.topRight,
                                child: Image.asset(
                                  'assets/images/signoutBlack.png',
                                  color: Colors.white,
                                  // alignment: Alignment.center,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                //width: size.width,

                                alignment: Alignment.topLeft,
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  //    color: Colors.red,
                                  border: Border.all(
                                      color: Colors.transparent, width: 4),
                                  shape: BoxShape.circle,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(23),
                                  child: Image.asset(
                                    'assets/images/logo.jpeg',
                                    alignment: Alignment.center,
                                    fit: BoxFit.cover,
                                    width: size.width * 0.3,
                                    height: size.height * 0.15,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6.0),
                              child: Container(
                                padding: const EdgeInsets.only(left: 8.0),
                                width: size.width,
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'kola llori',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(height: 1,),
                            Container(
                              padding: const EdgeInsets.only(left: 8.0),
                              width: size.width,
                              alignment: Alignment.topLeft,
                              child: Text(
                                'medycarehealth@gmail.com',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.7)),
                              ),
                            )
                          ],
                        ),
                      ),

                    ]
                ),
              ),


            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: MyApp.status == "home" ? Color(0xFFE7EEFE) : Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.grey.withOpacity(0.4),
                    onTap: (){
                      setState(() {
                        MyApp.status = "home";
                      });
                      print(MyApp.status);
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => Home(),
                          transitionsBuilder: (c, anim, a2, child) =>
                              FadeTransition(opacity: anim, child: child),
                          transitionDuration: Duration(milliseconds: 100),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: MyApp.status == "home" ? Colors.blue : Colors.black
                        ),
                      ),
                      leading: Container(
                          height: 22.0,
                          width: 22.0,
                          child: Image.asset(
                            'assets/images/homeBlack.png',
                            color: MyApp.status == "home" ? Colors.blue : Colors.black,
                            fit: BoxFit.scaleDown,
                            //     color: Colors.blue,
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: MyApp.status == "profile" ? Color(0xFFE7EEFE) : Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.grey.withOpacity(0.4),
                    onTap: (){
                      setState(() {
                        MyApp.status = "profile";
                      });
                      print(MyApp.status);
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => Profile(),
                          transitionsBuilder: (c, anim, a2, child) =>
                              FadeTransition(opacity: anim, child: child),
                          transitionDuration: Duration(milliseconds: 100),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Profile',
                        style:
                        TextStyle(
                          color: MyApp.status == "profile" ? Colors.blue : Colors.black,
                          fontSize: 13, fontWeight: FontWeight.w700,),
                      ),
                      leading: Container(
                          height: 22.0,
                          width: 22.0,
                          child: Image.asset(
                            'assets/images/profileBlack.png',
                            color: MyApp.status == "profile" ? Colors.blue : Colors.black,
                            fit: BoxFit.scaleDown,
                          )),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Container(
                height: 1,
                color: Color(0xffE6E6E6),
              ),
            ),
            Container(
              height: size.height * 0.05,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Care',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: MyApp.status == "vitals" ? Color(0xFFE7EEFE) : Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.grey.withOpacity(0.4),
                    onTap: (){
                      setState(() {
                        MyApp.status = "vitals";
                      });
                      print(MyApp.status);
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => Vitals(),
                          transitionsBuilder: (c, anim, a2, child) =>
                              FadeTransition(opacity: anim, child: child),
                          transitionDuration: Duration(milliseconds: 100),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Vitals',
                        style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w700,
                          color: MyApp.status == "vitals" ? Colors.blue : Colors.black,
                        ),
                      ),
                      leading: Container(
                          height: 22.0,
                          width: 22.0,
                          child: Image.asset(
                            'assets/images/vitalsBlue.png',
                            color: MyApp.status == "vitals" ? Colors.blue : Colors.black,
                            fit: BoxFit.scaleDown,
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: MyApp.status == "Drug_Schedule" ? Color(0xFFE7EEFE) : Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.grey.withOpacity(0.4),
                    onTap: (){
                      setState(() {
                        MyApp.status = "Drug_Schedule";

                      });
                      print(MyApp.status);
                    },
                    child: ListTile(
                      title: Text(
                        'Drug Schedule',
                        style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w700,
                            color: MyApp.status == "Drug_Schedule" ? Colors.blue : Colors.black),
                      ),
                      leading: Container(
                          height: 22.0,
                          width: 22.0,
                          child: Image.asset(
                            'assets/images/drugScheduleBlue.png',
                            fit: BoxFit.scaleDown,
                            color: MyApp.status == "Drug_Schedule" ? Colors.blue : Colors.black,
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: MyApp.status == "vaccines" ? Color(0xFFE7EEFE) : Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.grey.withOpacity(0.4),
                    onTap: (){
                      setState(() {
                        MyApp.status = "vaccines";
                      });
                    },
                    child: ListTile(
                      title: Text(
                        'Vaccines',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w700,
                            color: MyApp.status == "vaccines" ? Colors.blue : Colors.black),
                      ),
                      leading: Container(
                          height: 22.0,
                          width: 22.0,
                          child: Image.asset(
                            'assets/images/vaccinesBlue.png',
                            fit: BoxFit.scaleDown,
                            color: MyApp.status == "vaccines" ? Colors.blue : Colors.black,
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: MyApp.status == "Test Results" ? Color(0xFFE7EEFE) : Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.grey.withOpacity(0.4),
                    onTap: (){
                      setState(() {
                        MyApp.status = "Test Results";
                      });
                    },
                    child: ListTile(
                      title: Text(
                        'Test Results',
                        style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w700,
                          color: MyApp.status == "Test Results" ? Colors.blue : Colors.black,
                        ),
                      ),
                      leading: Container(
                          height: 22.0,
                          width: 22.0,
                          child: Image.asset(
                            'assets/images/testResultsBlue.png',
                            fit: BoxFit.scaleDown,
                            color: MyApp.status == "Test Results" ? Colors.blue : Colors.black,
                          )),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Container(
                height: 1,
                color: Color(0xffE6E6E6),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: MyApp.status == "Contact US" ? Color(0xFFE7EEFE) : Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.grey.withOpacity(0.4),
                    onTap: (){
                      setState(() {
                        MyApp.status = "Contact US";
                      });
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => ContactUs(),
                          transitionsBuilder: (c, anim, a2, child) =>
                              FadeTransition(opacity: anim, child: child),
                          transitionDuration: Duration(milliseconds: 100),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Contact US',
                        style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w700,
                          color: MyApp.status == "Contact US" ? Colors.blue : Colors.black,
                        ),
                      ),
                      leading: Container(
                          height: 22.0,
                          width: 22.0,
                          child: Image.asset(
                            'assets/images/contactUsBlack.png',
                            fit: BoxFit.scaleDown,
                            color: MyApp.status == "Contact US" ? Colors.blue : Colors.black,
                          )
                        // Image.asset(
                        //   'assets/images/contactUsBlack.jpeg',
                        //   fit: BoxFit.scaleDown,
                        //   color: status == "Contact US" ? Colors.blue : Colors.black,
                        // )

                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: MyApp.status == "Settings" ? Color(0xFFE7EEFE) : Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.grey.withOpacity(0.4),
                    onTap: (){
                      setState(() {
                        MyApp.status = "Settings";
                      });
                      print(MyApp.status);
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => Settings(),
                          transitionsBuilder: (c, anim, a2, child) =>
                              FadeTransition(opacity: anim, child: child),
                          transitionDuration: Duration(milliseconds: 100),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Settings',
                        style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w700,
                          color: MyApp.status == "Settings" ? Colors.blue : Colors.black,
                        ),
                      ),
                      leading: Container(
                          height: 22.0,
                          width: 22.0,
                          child: Image.asset(
                            'assets/images/settingsBlack.png',
                            fit: BoxFit.scaleDown,
                            color: MyApp.status == "Settings" ? Colors.blue : Colors.black,
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: MyApp.status == "Sign Out" ? Color(0xFFE7EEFE) : Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.grey.withOpacity(0.4),
                    onTap: (){
                      setState(() {
                        MyApp.status = "Sign Out";
                      });
                      print(MyApp.status);
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => Signin(),
                          transitionsBuilder: (c, anim, a2, child) =>
                              FadeTransition(opacity: anim, child: child),
                          transitionDuration: Duration(milliseconds: 100),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Sign Out',
                        style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w700,
                          color: MyApp.status == "Sign Out" ? Colors.blue : Colors.black,
                        ),
                      ),
                      leading: Container(
                          height: 22.0,
                          width: 22.0,
                          child: Image.asset(
                            'assets/images/signoutBlack.png',
                            fit: BoxFit.scaleDown,
                            color: MyApp.status == "Sign Out" ? Colors.blue : Colors.black,
                          )),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
