import 'package:flutter/material.dart';
import 'package:loginscreen/FadeAnimation.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:timer_button/timer_button.dart';

class OTP extends StatefulWidget {
  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color.fromARGB(255, 230, 81, 0),
          Color.fromARGB(171, 240, 117, 16),
          Color.fromARGB(250, 230, 158, 50)
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "OTP Verification",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    )),
                child: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          Container(
                              child: Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 150,
                                ),
                                FadeAnimation(
                                  1,
                                  Container(
                                    child: Text(
                                      "Enter the OTP",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 230, 81, 0),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                FadeAnimation(
                                  1.5,
                                  Container(
                                    child: Text(
                                      "We have sent you OTP to your e-mail",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 172, 168, 166),
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                FadeAnimation(
                                  2,
                                  Container(
                                    child: Text(
                                      "address for verification",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 172, 168, 166),
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                FadeAnimation(
                                  2.5,
                                  Container(
                                    child: PinEntryTextField(
                                      showFieldAsBox: true,

                                      onSubmit: (String pin) {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text("Pin"),
                                                content:
                                                    Text('Pin entered is $pin'),
                                              );
                                            }); //end showDialog()
                                      }, // end onSubmit
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                FadeAnimation(
                                    3,
                                    Container(
                                      child: TimerButton(
                                          label: "Send OTP Again",
                                          timeOutInSeconds: 5,
                                          onPressed: () {
                                            print("Time for some action!");
                                          },
                                          buttonType: ButtonType.TextButton,
                                          disabledColor:
                                              Color.fromARGB(255, 230, 81, 0),
                                          color:
                                              Color.fromARGB(255, 230, 81, 0)),
                                    )),
                              ],
                            ),
                          )),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
