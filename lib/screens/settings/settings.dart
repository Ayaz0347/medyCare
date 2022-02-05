import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/contactus/contact_us.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:flutter_app/screens/home/home_drawer.dart';
import 'package:flutter_app/screens/profile/profile.dart';
import 'package:flutter_app/screens/signin/sign_in.dart';
import 'package:flutter_app/screens/vitals/vitals.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A62B4),
        title: Text(
          'Settings',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20, color: Colors.white),
        ),
      ),
      drawer: HomeDrawer(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: devSize.height * 0.12,
            child: ListTile(
              leading: Container(
                  child: Image.asset(
                'assets/images/measurement.jpg',
                height: 30,
              )),
              title: Text(
                'Measurement',
                style: TextStyle(fontSize: 15, color: Color(0xff676d6d)),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 25,
                color: Color(0xFF0A62B4),
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            height: devSize.height * 0.001,
          ),
          Container(
            height: devSize.height * 0.12,
            child: Container(
              alignment: Alignment.center,
              child: ListTile(
                leading: Container(
                    child: Image.asset(
                  'assets/images/period_cycle.jpg',
                  height: 30,
                )),
                title: Text(
                  'Period Cycle',
                  style: TextStyle(fontSize: 15, color: Color(0xff676d6d)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 25,
                  color: Color(0xFF0A62B4),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            height: devSize.height * 0.001,
          ),
        ],
      ),
    );
  }
}
