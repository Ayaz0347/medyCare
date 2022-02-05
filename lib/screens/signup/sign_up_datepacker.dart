import 'package:flutter/material.dart';
import 'package:flutter_app/screens/signup/Sign_up_nhs.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({Key? key}) : super(key: key);

  @override
  _DatepickerState createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
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
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Container(
                          alignment: Alignment.center,
                          // height: size.height * .04,
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
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? size.height * 0.01
                          : size.height * 0.02,
                    ),
                    Text(
                      'Tell us your Date of Birth',
                      style: TextStyle(fontSize: 11, color: Colors.black54),
                    )
                  ],
                ),
              ),
              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? size.height * 0.08
                        : size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Container(
                  width:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? size.width * 0.8
                          : size.width * 0.5,
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: DatePickerWidget(
                    looping: false, // default is not looping
                    firstDate: DateTime(1960),
                    lastDate: DateTime(2050),
                    initialDate: DateTime.now(),
                    dateFormat: "MMM-dd-year",
                    onChange: (DateTime newDate, _) {
                      _selectedDate = newDate;
                      print(_selectedDate);
                    },
                    pickerTheme: DateTimePickerTheme(
                      itemTextStyle:
                          TextStyle(color: Colors.black, fontSize: 13),
                      dividerColor: Colors.black54,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .1,
                // width: size.width * .90,
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
                child: const Text('Next', style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.w500
                ),),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => SignUpNHS(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: Duration(milliseconds: 0),
                    ),
                  );
                },
              ),
              SizedBox(
                height: size.height * .06,
               // width: size.width * .90,
              ),
            ]),
          ),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: Text("open picker dialog"),
            onPressed: () async {
              var datePicked = await DatePicker.showSimpleDatePicker(
                context,
                initialDate: DateTime(1994),
                firstDate: DateTime(1960),
                lastDate: DateTime(2012),
                dateFormat: "dd-MMMM-yyyy",
                locale: DateTimePickerLocale.en_us,
                looping: true,
              );

              final snackBar =
                  SnackBar(content: Text("Date Picked $datePicked"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          ElevatedButton(
            child: Text("Show picker widget"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => DatePickerWidget()));
            },
          )
        ],
      ),
    );
  }
}
