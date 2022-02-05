import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/contactus/contact_us.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:flutter_app/screens/home/home_drawer.dart';
import 'package:flutter_app/screens/settings/settings.dart';
import 'package:flutter_app/screens/signin/sign_in.dart';
import 'package:flutter_app/screens/vitals/vitals.dart';

class Profile extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0754a2),
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: HomeDrawer(),


      body: SingleChildScrollView(
        child: Container(

          color: Colors.grey.withOpacity(0.2),
          height: devSize.height*0.9,

          child: Column(
            children: [
             SizedBox(
               height: devSize.height*0.02,

             ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:

                Container(
                  height:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? devSize.height * 0.3
                      : devSize.height * 0.5,

                  color: Colors.white,

                  child: Column(
                    children: [
                      Container(
                        height:
                        MediaQuery.of(context).orientation == Orientation.portrait
                            ? devSize.height * 0.15
                            : devSize.height * 0.2,

                          child: Row(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 12, top: 8, bottom: 8),
                          child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  height:
                                  MediaQuery.of(context).orientation == Orientation.portrait
                                      ? devSize.height * 0.12
                                      : devSize.height * 0.3,
                                  child: Image.asset('assets/images/Profile.jpeg'),
                                ),
                              ),
                            ),

                            Container(
                              alignment: Alignment.centerLeft,
                              height: devSize.height * 0.12,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Container(
                                    alignment: Alignment.bottomLeft,

                                    height:
                                    MediaQuery.of(context).orientation == Orientation.portrait
                                        ? devSize.height * 0.08
                                        : devSize.height * 0.055,

                                    child: Text(
                                      'Kola Ilori',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff585D5E),
                                          fontSize: 20),
                                    ),
                                  ),

                                  Container(
                                    alignment: Alignment.center,
                                    height:
                                    MediaQuery.of(context).orientation == Orientation.portrait
                                        ? devSize.height * 0.04
                                        : devSize.height * 0.05,
                                    child: Text('medycarehealth@gmail.com',
                                        style: TextStyle(
                                            color: Color(0xff585D5E),
                                            fontSize: 12)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height:
                        MediaQuery.of(context).orientation == Orientation.portrait
                            ? devSize.height * 0.04
                            : devSize.height * 0.09,

                      ),

                      Container(

                        width: devSize.width * 0.9,
                        height:
                        MediaQuery.of(context).orientation == Orientation.portrait
                            ? devSize.height * 0.09
                            : devSize.height * 0.09,

                        color: Colors.grey.withOpacity(0.2),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              color: Colors.white,
                              height: devSize.height * 0.09,
                              width: devSize.width * 0.445,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      //    color: Colors.white,
                                      child: Text(
                                        '34',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff585D5E),
                                        ),
                                      )),

                                  SizedBox(
                                    height:
                                    MediaQuery.of(context).orientation == Orientation.portrait
                                        ? devSize.height * 0.01
                                        : devSize.height * 0.00,
                                  ),
                                  Container(
                                      child: Text(
                                    'Age',
                                    style: TextStyle(
                                        color: Color(0xff585D5E), fontSize: 10),
                                  )),
                                ],
                              ),
                            ),


                            Container(
                              color: Colors.white,
                              height: devSize.height * 0.09,
                              width: devSize.width * 0.445,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      child: Text(
                                    'Male',
                                    style: TextStyle(
                                        color: Color(0xff585D5E), fontSize: 16),
                                  )),

                                  SizedBox(
                                    height:
                                    MediaQuery.of(context).orientation == Orientation.portrait
                                        ? devSize.height * 0.01
                                        : devSize.height * 0.00,
                                  ),

                                  Container(
                                      child: Text(
                                    'Gender',
                                    style: TextStyle(
                                        color: Color(0xff585D5E), fontSize: 10),
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).orientation == Orientation.portrait
                      ? devSize.height * 0.5
                      : devSize.height * 0.27,

                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
