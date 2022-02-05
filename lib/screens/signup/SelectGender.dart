import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/signup/sign_up_datepacker.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';

class SelectGender extends StatelessWidget {
  const SelectGender({Key? key}) : super(key: key);

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
      body: Container(
        width: devSize.width * 1,
        height: devSize.height * 2,
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              //color: Colors.blue,
              width: devSize.width,
              height: devSize.height * 0.08,
              child: Text(
                'Complete Profile',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              alignment: Alignment.center,
              //color: Colors.blue,
              width: devSize.width * 0.7,
              height: devSize.height * 0.05,
              child: Text(
                'Please select your Gender',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff585D5E),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: devSize.height * 0.15,
            ),
            Container(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? devSize.height * 0.25
                  : devSize.height * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? devSize.height * 0.17
                              : devSize.height * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (c, a1, a2) => Datepicker(),
                                    transitionsBuilder: (c, anim, a2, child) =>
                                        FadeTransition(
                                            opacity: anim, child: child),
                                    transitionDuration:
                                    Duration(milliseconds: 0),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/female.jpg',
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: devSize.height * 0.01,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (c, a1, a2) => Datepicker(),
                              transitionsBuilder: (c, anim, a2, child) =>
                                  FadeTransition(
                                      opacity: anim, child: child),
                              transitionDuration:
                              Duration(milliseconds: 0),
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          //color: Colors.blue,
                          //width: devSize.width,
                          //height: devSize.height*0.08,
                          child: Text(
                            'Male',
                            style: TextStyle(
                                color: Color(0xff585D5E),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          height: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? devSize.height * 0.17
                              : devSize.height * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (c, a1, a2) => Datepicker(),
                                    transitionsBuilder: (c, anim, a2, child) =>
                                        FadeTransition(
                                            opacity: anim, child: child),
                                    transitionDuration:
                                        Duration(milliseconds: 0),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/male.jpg',
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: devSize.height * 0.01,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (c, a1, a2) => Datepicker(),
                              transitionsBuilder: (c, anim, a2, child) =>
                                  FadeTransition(
                                      opacity: anim, child: child),
                              transitionDuration:
                              Duration(milliseconds: 0),
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          //color: Colors.blue,
                          //width: devSize.width,
                          //height: devSize.height*0.08,
                          child: Text(
                            'Female',
                            style: TextStyle(
                                color: Color(0xff585D5E),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
