import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/signup/SelectGender.dart';

class CompleteProfileAddress extends StatefulWidget {
  @override
  _CompleteProfileAddressState createState() => _CompleteProfileAddressState();
}

class _CompleteProfileAddressState extends State<CompleteProfileAddress> {
  TextEditingController _streetController = TextEditingController();
  TextEditingController _townController = TextEditingController();
  TextEditingController _pastCodeController = TextEditingController();



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
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: devSize.height * 1,
          //  color: Colors.blueAccent,
          child: Column(
            children: [
              SizedBox(
                height: devSize.height * 0.05,
              ),
              Container(
                //color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  'Complete Profile',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: devSize.height * 0.01,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Please Complete your address',
                  style: TextStyle(
                      color: Color(0xff585D5E),
                      fontWeight: FontWeight.w400,
                      fontSize: 11),
                ),
              ),
              SizedBox(
                height: devSize.height * 0.06,
              ),
              Container(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? devSize.height * 0.075
                        : devSize.height * 0.1,
                width:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? devSize.width * 0.8
                        : devSize.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    ),
                child: TextFormField(
                  controller: _streetController,
                  //controller: _controller,
                  decoration: InputDecoration(
                      labelText: 'Street',
                      labelStyle: TextStyle(fontSize: 13),
                      // suffixIcon: IconButton(
                      //     icon: Icon(Icons.remove_red_eye_rounded,size: 20,),
                      //     splashColor: Colors.grey,
                      //     onPressed: () {
                      //       setState(() {
                      //         // _controller.clear();
                      //       });
                      //     }),
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
                height: devSize.height * 0.04,
              ),
              Container(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? devSize.height * 0.075
                        : devSize.height * 0.1,
                width:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? devSize.width * 0.8
                        : devSize.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                child: TextFormField(
                  controller: _townController,
                  //controller: _controller,
                  decoration: InputDecoration(
                      labelText: 'City or Town',
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
                height: devSize.height * 0.04,
              ),
              Container(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? devSize.height * 0.075
                        : devSize.height * 0.1,
                width:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? devSize.width * 0.8
                        : devSize.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  //controller: _controller,
                  decoration: InputDecoration(
                      labelText: 'Country',
                      labelStyle: TextStyle(fontSize: 13),
                      suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            size: 20,
                          ),
                          splashColor: Colors.grey,
                          onPressed: () {
                            setState(() {
                              //  _controller.clear();
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
                height: devSize.height * 0.04,
              ),
              Container(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? devSize.height * 0.075
                        : devSize.height * 0.1,
                width:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? devSize.width * 0.8
                        : devSize.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  controller: _pastCodeController,
                  //controller: _controller,
                  decoration: InputDecoration(
                      labelText: 'Post Code',
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
                height: devSize.height * 0.08,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // background color
                  primary: Color(0xff52becb),
                  textStyle: const TextStyle(fontSize: 20),
                  fixedSize: Size(MediaQuery.of(context).orientation == Orientation.portrait
                      ? devSize.width * 0.8
                      : devSize.width * 0.5, MediaQuery.of(context).orientation == Orientation.portrait
                      ? devSize.height * 0.073
                      : devSize.height * 0.1,),
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
                      pageBuilder: (c, a1, a2) => SelectGender(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: Duration(milliseconds: 0),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
