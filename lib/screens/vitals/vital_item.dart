import 'package:flutter/material.dart';
import 'package:flutter_app/screens/signup/CompleteProfileName.dart';

class VitalItem extends StatefulWidget {
  const VitalItem({Key? key}) : super(key: key);

  @override
  _VitalItemState createState() => _VitalItemState();
}

class _VitalItemState extends State<VitalItem> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
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
          'Blood Group',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0A62B4),
      ),
      floatingActionButton: new FloatingActionButton(
          elevation: 0.0,
          child: Container(
              height: 22.0,
              width: 22.0,
              child: Image.asset(
                'assets/images/ic_edit.png',
                fit: BoxFit.scaleDown,
              )),
          backgroundColor: Color(0xff52becb),
          onPressed: (){
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (c, a1, a2) => CompleteProfileName(),
                transitionsBuilder:
                    (c, anim, a2, child) =>
                    FadeTransition(
                        opacity: anim, child: child),
                transitionDuration:
                Duration(milliseconds: 0),
              ),
            );
          }
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                alignment: Alignment.centerRight,
                width: //MediaQuery.of(context).orientation == Orientation.portrait?
                    size.width * 0.9,
                // :size.width*0.5,
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0.07
                        : size.height * 0.14,
                child: Image.asset('assets/images/blood_group.png'),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  width: //MediaQuery.of(context).orientation == Orientation.portrait?
                      size.width * 0.9,
                  //:size.width * 0.5,
                  //   height:// MediaQuery.of(context).orientation == Orientation.portrait?//  size.height*0.08,
                  //:size.height*15,
                  child: const Text('B+',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 50.0,
                          color: Colors.black54))),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  width: //MediaQuery.of(context).orientation == Orientation.portrait?
                      size.width * 0.9,
                  //:size.width * 0.5,
                  // height: //MediaQuery.of(context).orientation == Orientation.portrait?
                  // size.height*0.05,
                  //:size.height*0.1,
                  child: const Text(
                      'B Antigens with anti-A Antibodies in the plasma RhD Antigen',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          color: Colors.black54))),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                width: size.width * 0.95,
                height: size.height * 0.003,
                color: Colors.grey[300],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  width: size.width * 0.9,
                  //height: size.height*0.03,
                  child: const Text('Receive  Blood',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          color: Colors.black54))),
              SizedBox(
                height: size.height * 0.005,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  width: size.width * 0.9,
                  // height: size.height*0.02,
                  child: const Text(
                      'You can receive blood from B+, B- and O+, O-',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          color: Colors.black54))),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  width: size.width * 0.9,
                  // height: size.height*0.03,
                  child: const Text('Donate Blood',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          color: Colors.black54))),
              SizedBox(
                height: size.height * 0.005,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  width: size.width * 0.9,
                  //height: size.height*0.02,
                  child: const Text('You can donate  blood to  B+, AB+',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          color: Colors.black54))),
              SizedBox(
                height: size.height * 0.025,
              ),
              Container(
                width: size.width * 0.95,
                //  height: size.height*0.003,
                color: Colors.grey[300],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
