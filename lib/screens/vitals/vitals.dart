import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/home_drawer.dart';
import 'package:flutter_app/screens/profile/profile.dart';
import 'package:flutter_app/screens/settings/settings.dart';
import 'package:flutter_app/screens/signin/sign_in.dart';
import 'package:flutter_app/screens/vitals/vital_item.dart';
import 'package:flutter_app/screens/vitals/vitals.dart';
import '../contactus/contact_us.dart';
import '../home/home.dart';

class Vitals extends StatefulWidget {
  const Vitals({Key? key}) : super(key: key);

  @override
  _VitalsState createState() => _VitalsState();
}

class _VitalsState extends State<Vitals> {
  String? status;
  @override
  void initState() {
    setState(() {
      status = "";
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
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFe2e2e2),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          'Vitals',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0A62B4),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? size.height * 0.01
                  : size.height * 0.02,
            ),
            Card(
              elevation: 4,
              child: Container(
                height:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.height * 0.16
                    : size.height * 0.3,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: new Material(
                  color: Colors.transparent,
                  child: new InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => VitalItem(),
                          transitionsBuilder: (c, anim, a2, child) =>
                              FadeTransition(opacity: anim, child: child),
                          transitionDuration: Duration(milliseconds: 0),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  padding: EdgeInsets.only(left: 8),
                                  alignment: Alignment.centerLeft,
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.45
                                      : size.width * 0.45,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.05
                                      : size.height * 0.11,
                                  child: const Text("Blood Group",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13.0,
                                          color: Colors.black45))),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      //  width: MediaQuery.of(context).orientation == Orientation.portrait?size.width*0.1:size.width*0.05,
                                      height:
                                      MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.01
                                          : size.height * 0.02,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      alignment: Alignment.centerRight,
                                      width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.45
                                          : size.width * 0.45,
                                      height:
                                      MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.04
                                          : size.height * 0.08,
                                      child: Image.asset(
                                          'assets/images/blood_group.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          //  padding: EdgeInsets.only(left: 8),

                          child: Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(left: 8),
                                  alignment: Alignment.centerLeft,
                                  //  alignment: Alignment.center,
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.04
                                      : size.height * 0.08,
                                  child: const Text('A+',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 26.0,
                                          color: Colors.black45))),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: const Text("No Data",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: Text("15-Aug-2020 22:21",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ),

              ),
            ),
            SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0.011
                        : size.height * 0.022),
            Card(
              elevation: 4,
              child: Container(
                height:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.height * 0.16
                    : size.height * 0.3,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: new Material(
                  color: Colors.transparent,
                  child: new InkWell(
                    onTap: (){
                    },
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.45
                                      : size.width * 0.45,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.05
                                      : size.height * 0.1,
                                  child: const Text("Blood oxygen",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0,
                                          color: Colors.black45))),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      //  width: MediaQuery.of(context).orientation == Orientation.portrait?size.width*0.1:size.width*0.05,
                                      height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.01
                                          : size.height * 0.02,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      alignment: Alignment.centerRight,
                                      width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.45
                                          : size.width * 0.45,
                                      height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.04
                                          : size.height * 0.08,
                                      child: Image.asset(
                                          'assets/images/blood_oxygen.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 8),
                                alignment: Alignment.centerLeft,
                                width: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.width * 0.9
                                    : size.width * 0.9,
                                // height: size.height*0.04,
                                child: RichText(
                                    text: TextSpan(
                                        text: '97',
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black45,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '%SpO2',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.0,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ])),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: const Text("No Data",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: Text("15-Aug-2020 22:21",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ),

              ),
            ),
            SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0.011
                        : size.height * 0.022),
            Card(
              elevation: 4,
              child: Container(
                height:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.height * 0.16
                    : size.height * 0.3,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: new Material(
                  color: Colors.transparent,
                  child: new InkWell(
                    onTap: (){
                    },
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.45
                                      : size.width * 0.45,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.05
                                      : size.height * 0.1,
                                  child: const Text("Heart Rate",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0,
                                          color: Colors.black45))),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      //  width: MediaQuery.of(context).orientation == Orientation.portrait?size.width*0.1:size.width*0.05,
                                      height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.01
                                          : size.height * 0.02,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      alignment: Alignment.centerRight,
                                      width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.45
                                          : size.width * 0.45,
                                      height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.04
                                          : size.height * 0.08,
                                      child: Image.asset('assets/images/heart.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 8),
                                alignment: Alignment.centerLeft,
                                width: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.width * 0.9
                                    : size.width * 0.9,
                                // height: size.height*0.04,
                                child: RichText(
                                    text: TextSpan(
                                        text: '30',
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black45,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'beats/min',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.0,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ])),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: const Text("No Data",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: Text("15-Aug-2020 22:21",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ),

              ),
            ),
            SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0.011
                        : size.height * 0.022),
            Card(
              elevation: 4,
              child: Container(
                height:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.height * 0.16
                    : size.height * 0.3,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: new Material(
                  color: Colors.transparent,
                  child: new InkWell(
                    onTap: (){
                    },
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.45
                                      : size.width * 0.45,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.05
                                      : size.height * 0.1,
                                  child: const Text("Respiratory Rate",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0,
                                          color: Colors.black45))),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      //  width: MediaQuery.of(context).orientation == Orientation.portrait?size.width*0.1:size.width*0.05,
                                      height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.01
                                          : size.height * 0.02,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      alignment: Alignment.centerRight,
                                      width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.45
                                          : size.width * 0.45,
                                      height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.04
                                          : size.height * 0.08,
                                      child: Image.asset('assets/images/lungs.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 8),
                                alignment: Alignment.centerLeft,
                                width: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.width * 0.9
                                    : size.width * 0.9,
                                // height: size.height*0.04,
                                child: RichText(
                                    text: TextSpan(
                                        text: '45',
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black45,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'breaths/min',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.0,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ])),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: const Text("No Data",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: Text("15-Aug-2020 22:21",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ),

              ),
            ),
            SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0.011
                        : size.height * 0.022),
            Card(
              elevation: 4,
              child: Container(
                height:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.height * 0.16
                    : size.height * 0.3,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: new Material(
                  color: Colors.transparent,
                  child: new InkWell(
                    onTap: (){
                    },
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.45
                                      : size.width * 0.45,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.05
                                      : size.height * 0.1,
                                  child: const Text("Body Temperature",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0,
                                          color: Colors.black45))),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      //  width: MediaQuery.of(context).orientation == Orientation.portrait?size.width*0.1:size.width*0.05,
                                      height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.01
                                          : size.height * 0.02,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 8),
                                      alignment: Alignment.centerRight,
                                      width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.45
                                          : size.width * 0.45,
                                      height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.04
                                          : size.height * 0.08,
                                      child: Image.asset(
                                          'assets/images/temperature.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 8),
                                alignment: Alignment.centerLeft,
                                width: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.width * 0.9
                                    : size.width * 0.9,
                                // height: size.height*0.04,
                                child: RichText(
                                    text: TextSpan(
                                        text: '30',
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black45,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '°C',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.0,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ])),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: const Text("No Data",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: Text("15-Aug-2020 22:21",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ),

              ),
            ),
            SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0.011
                        : size.height * 0.022),
            Card(
              elevation: 4,
              child: Container(
                height:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.height * 0.28
                    : size.height * 0.525,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: new Material(
                  color: Colors.transparent,
                  child: new InkWell(
                    onTap: (){
                    },
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.45
                                      : size.width * 0.45,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.05
                                      : size.height * 0.1,
                                  child: const Text("Blood Pressure",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14.0,
                                          color: Colors.black45))),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      //  width: MediaQuery.of(context).orientation == Orientation.portrait?size.width*0.1:size.width*0.05,
                                      height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.01
                                          : size.height * 0.02,
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      padding: EdgeInsets.only(right: 8),
                                      width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.45
                                          : size.width * 0.45,
                                      height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.04
                                          : size.height * 0.08,
                                      child: Image.asset(
                                          'assets/images/blood_pressure.jpeg'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.085
                              : size.height * 0.15,
                          // color: Colors.blue,
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.02
                                      : size.height * 0.04,
                                  child: const Text('Systolic',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.0,
                                          color: Colors.black45))),
                              Container(
                                height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.height * 0.065
                                    : size.height * 0.1,
                                width: size.width * 0.9,
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(left: 8),
                                      width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.9
                                          : size.width * 0.9,
                                      // height: size.height*0.04,
                                      child: RichText(
                                          text: TextSpan(
                                              text: '145',
                                              style: TextStyle(
                                                fontSize: 23.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black45,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'mmHg',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.0,
                                                    color: Colors.black45,
                                                  ),
                                                ),
                                              ])),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.0
                              : size.height * 0.015,
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.085
                              : size.height * 0.15,
                          // color: Colors.blue,
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.02
                                      : size.height * 0.04,
                                  child: const Text('Diastolic',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.0,
                                          color: Colors.black45))),
                              Container(
                                height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.height * 0.065
                                    : size.height * 0.1,
                                width: size.width * 0.9,
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(left: 8),
                                      width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.9
                                          : size.width * 0.9,
                                      // height: size.height*0.04,
                                      child: RichText(
                                          text: TextSpan(
                                              text: '90',
                                              style: TextStyle(
                                                fontSize: 23.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black45,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'mmHg',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.0,
                                                    color: Colors.black45,
                                                  ),
                                                ),
                                              ])),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: const Text("No Data",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: Text("15-Aug-2020 22:21",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ),

              ),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            Card(
              elevation: 4,
              child: Container(
                height:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? size.height * 0.28
                    : size.height * 0.525,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: new Material(
                  color: Colors.transparent,
                  child: new InkWell(
                    onTap: (){
                    },
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.45
                                      : size.width * 0.45,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.05
                                      : size.height * 0.1,
                                  child: const Text("Blood Sugar",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14.0,
                                          color: Colors.black45))),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      //  width: MediaQuery.of(context).orientation == Orientation.portrait?size.width*0.1:size.width*0.05,
                                      height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.01
                                          : size.height * 0.02,
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      padding: EdgeInsets.only(right: 8),
                                      width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.45
                                          : size.width * 0.45,
                                      height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.04
                                          : size.height * 0.08,
                                      child: Image.asset(
                                          'assets/images/blood_sugar.jpeg'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.085
                              : size.height * 0.15,
                          // color: Colors.blue,
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.02
                                      : size.height * 0.04,
                                  child: const Text('Before Meal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.0,
                                          color: Colors.black45))),
                              Container(
                                height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.height * 0.065
                                    : size.height * 0.1,
                                width: size.width * 0.9,
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(left: 8),
                                      width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.9
                                          : size.width * 0.9,
                                      // height: size.height*0.04,
                                      child: RichText(
                                          text: TextSpan(
                                              text: '145',
                                              style: TextStyle(
                                                fontSize: 23.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black45,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'mmol/L',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.0,
                                                    color: Colors.black45,
                                                  ),
                                                ),
                                              ])),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.0
                              : size.height * 0.015,
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.085
                              : size.height * 0.15,
                          // color: Colors.blue,
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.02
                                      : size.height * 0.04,
                                  child: const Text('After Meal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.0,
                                          color: Colors.black45))),
                              Container(
                                height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.height * 0.065
                                    : size.height * 0.1,
                                width: size.width * 0.9,
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(left: 8),
                                      width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.9
                                          : size.width * 0.9,
                                      // height: size.height*0.04,
                                      child: RichText(
                                          text: TextSpan(
                                              text: '90',
                                              style: TextStyle(
                                                fontSize: 23.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black45,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'mmol/L',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.0,
                                                    color: Colors.black45,
                                                  ),
                                                ),
                                              ])),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                              ? size.height * 0.05
                              : size.height * 0.1,
                          width: size.width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: const Text("No Data",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                              Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 8),
                                  width: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.width * 0.9
                                      : size.width * 0.9,
                                  height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                      ? size.height * 0.025
                                      : size.height * 0.05,
                                  child: Text("15-Aug-2020 22:21",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.black54))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ),

              ),
            ),

            SizedBox(
              height: size.height * 0.015,
            ),
            Container(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? size.height * 0.17
                  : size.height * 0.35,
              width: size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 4,
                    child: Container(
                      height: MediaQuery.of(context).orientation ==
                          Orientation.portrait
                          ? size.height * 0.17
                          : size.height * 0.34,
                      width: size.width * 0.42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: new Material(
                        color: Colors.transparent,
                        child: new InkWell(
                          onTap: (){
                          },
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.height * 0.05
                                    : size.height * 0.1,
                                width: size.width * 0.42,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(left: 8),
                                        width: MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                            ? size.width * 0.21
                                            : size.width * 0.21,
                                        height:
                                        MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                            ? size.height * 0.05
                                            : size.height * 0.1,
                                        child: const Text("Height",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13.0,
                                                color: Colors.black45))),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            //  width: MediaQuery.of(context).orientation == Orientation.portrait?size.width*0.1:size.width*0.05,
                                            height: MediaQuery.of(context)
                                                .orientation ==
                                                Orientation.portrait
                                                ? size.height * 0.01
                                                : size.height * 0.02,
                                          ),
                                          Container(
                                            alignment: Alignment.centerRight,
                                            padding: EdgeInsets.only(right: 8),
                                            width: MediaQuery.of(context)
                                                .orientation ==
                                                Orientation.portrait
                                                ? size.width * 0.21
                                                : size.width * 0.21,
                                            height: MediaQuery.of(context)
                                                .orientation ==
                                                Orientation.portrait
                                                ? size.height * 0.04
                                                : size.height * 0.08,
                                            child: Image.asset(
                                                'assets/images/height.jpeg'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.height * 0.05
                                    : size.height * 0.1,
                                width: size.width * 0.42,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(left: 8),
                                      //color: Colors.red,
                                      width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.42
                                          : size.width * 0.42,
                                      // height: size.height*0.04,
                                      child: RichText(
                                          text: TextSpan(
                                              text: '30',
                                              style: TextStyle(
                                                fontSize: 23.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black45,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'meters',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.0,
                                                    color: Colors.black45,
                                                  ),
                                                ),
                                              ])),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.height * 0.05
                                    : size.height * 0.1,
                                width: size.width * 0.42,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        alignment: Alignment.centerRight,
                                        padding: EdgeInsets.only(right: 8),
                                        width: MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                            ? size.width * 0.42
                                            : size.width * 0.42,
                                        height:
                                        MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                            ? size.height * 0.025
                                            : size.height * 0.05,
                                        child: const Text("No Data",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.black54))),
                                    Container(
                                        alignment: Alignment.centerRight,
                                        padding: EdgeInsets.only(right: 8),
                                        width: MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                            ? size.width * 0.42
                                            : size.width * 0.42,
                                        height:
                                        MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                            ? size.height * 0.025
                                            : size.height * 0.05,
                                        child: Text("15-Aug-2020 22:21",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.black54))),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                      ),

                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Container(
                      height: MediaQuery.of(context).orientation ==
                          Orientation.portrait
                          ? size.height * 0.17
                          : size.height * 0.34,
                      width: size.width * 0.42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: new Material(
                        color: Colors.transparent,
                        child: new InkWell(
                          onTap: (){
                          },
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.height * 0.05
                                    : size.height * 0.1,
                                width: size.width * 0.42,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(left: 8),
                                        width: MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                            ? size.width * 0.21
                                            : size.width * 0.21,
                                        height:
                                        MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                            ? size.height * 0.05
                                            : size.height * 0.1,
                                        child: const Text("Weight",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13.0,
                                                color: Colors.black45))),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            //  width: MediaQuery.of(context).orientation == Orientation.portrait?size.width*0.1:size.width*0.05,
                                            height: MediaQuery.of(context)
                                                .orientation ==
                                                Orientation.portrait
                                                ? size.height * 0.01
                                                : size.height * 0.02,
                                          ),
                                          Container(
                                            alignment: Alignment.centerRight,
                                            padding: EdgeInsets.only(right: 8),
                                            width: MediaQuery.of(context)
                                                .orientation ==
                                                Orientation.portrait
                                                ? size.width * 0.21
                                                : size.width * 0.21,
                                            height: MediaQuery.of(context)
                                                .orientation ==
                                                Orientation.portrait
                                                ? size.height * 0.04
                                                : size.height * 0.08,
                                            child: Image.asset(
                                                'assets/images/weight.jpeg'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.height * 0.05
                                    : size.height * 0.1,
                                width: size.width * 0.42,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(left: 8),
                                      //color: Colors.red,
                                      width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.42
                                          : size.width * 0.42,
                                      // height: size.height*0.04,
                                      child: RichText(
                                          text: TextSpan(
                                              text: '60',
                                              style: TextStyle(
                                                fontSize: 23.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black45,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'kg',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12.0,
                                                    color: Colors.black45,
                                                  ),
                                                ),
                                              ])),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                    ? size.height * 0.05
                                    : size.height * 0.1,
                                width: size.width * 0.42,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        alignment: Alignment.centerRight,
                                        padding: EdgeInsets.only(right: 8),
                                        width: MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                            ? size.width * 0.42
                                            : size.width * 0.42,
                                        height:
                                        MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                            ? size.height * 0.025
                                            : size.height * 0.05,
                                        child: const Text("No Data",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.black54))),
                                    Container(
                                        alignment: Alignment.centerRight,
                                        padding: EdgeInsets.only(right: 8),
                                        width: MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                            ? size.width * 0.42
                                            : size.width * 0.42,
                                        height:
                                        MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                            ? size.height * 0.025
                                            : size.height * 0.05,
                                        child: Text("15-Aug-2020 22:21",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.black54))),
                                  ],
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
            SizedBox(
              height: size.height * 0.025,
            ),
          ]),
        ),
      ),
    );
  }
}
