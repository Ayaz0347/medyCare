import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/home_drawer.dart';
import 'package:flutter_app/screens/profile/profile.dart';
import 'package:flutter_app/screens/settings/settings.dart';
import 'package:flutter_app/screens/signin/sign_in.dart';
import 'package:flutter_app/screens/vitals/vitals.dart';

import '../home/home.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          'Contact Us',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0A62B4),
      ),
      drawer: HomeDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? size.height * 0.27
                  : size.height * 0.54,
              width: size.width,
              child: Image.asset('assets/images/contact_us.png'),
            ),
            SizedBox(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? size.height * 0.035
                  : size.height * 0.07,
            ),
            Container(
              width: size.width * 0.6,
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? size.height * 0.12
                  : size.height * 0.22,
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      width: size.width * 0.6,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? size.height * 0.035
                          : size.height * 0.07,
                      child: const Text("Contact Us",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                              color: Colors.black54))),
                  SizedBox(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.height * 0.01
                        : size.height * 0.013,
                  ),
                  Container(
                      width: size.width * 0.6,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? size.height * 0.055
                          : size.height * 0.12,
                      alignment: Alignment.center,
                      child: const Text(
                          "We would love to hear from you. Let\'s get in touch",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13.0,
                              color: Colors.black54))),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? size.height * 0.18
                  : size.height * 0.2,
            ),
            Container(
              width: size.width,
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? size.height * 0.07
                  : size.height * 0.14,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.width * 0.1
                        : size.width * 0.05,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.height * 0.07
                        : size.height * 0.14,
                    child: Image.asset('assets/images/twitter.png'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.width * 0.06
                        : size.width * 0.03,
                  ),
                  Container(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.width * 0.1
                        : size.width * 0.05,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.height * 0.07
                        : size.height * 0.14,
                    child: Image.asset('assets/images/gmail.png'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.width * 0.06
                        : size.width * 0.03,
                  ),
                  Container(
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.width * 0.1
                        : size.width * 0.05,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.height * 0.07
                        : size.height * 0.14,
                    child: Image.asset('assets/images/instagram.jpeg'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? size.height * 0.1
                  : size.height * 0.2,
            ),
          ],
        ),
      ),
    );
  }
}
