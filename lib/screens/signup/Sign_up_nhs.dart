import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/home.dart';

class SignUpNHS extends StatefulWidget {
  const SignUpNHS({Key? key}) : super(key: key);

  @override
  _SignUpNHSState createState() => _SignUpNHSState();
}

class _SignUpNHSState extends State<SignUpNHS> {

  TextEditingController _nhsNumberController = TextEditingController();
  TextEditingController _privateMedicalNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Container(
                          alignment: Alignment.center,
                          //height: size.height*.04,
                          width: size.width * .90,
                          child: Text(
                            'Complete Profile',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: size.height * .005,
                    ),
                    Container(
                        alignment: Alignment.center,
                        height: size.height * .05,
                        width: size.width * .50,
                        child: Text(
                          'Please tell us your health care identification details',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11, color: Colors.black54),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .07,
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
                  controller: _nhsNumberController,
                  decoration: InputDecoration(
                    labelText: 'NHS Number',
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
                height: size.height * .03,
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
                  controller: _privateMedicalNumberController,
                  //controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Private Medical Number',
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
                height: size.height * .1,
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
                child: const Text('Finish', style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.w500
                ),),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => Home(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: Duration(milliseconds: 0),
                    ),
                  );
                },
              ),
              SizedBox(
                height: size.height * .04,
                width: size.width * .90,
              )
            ],
          ),
        )));
  }
}
