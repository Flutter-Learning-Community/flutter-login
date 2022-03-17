import 'package:flutter/material.dart';
import 'package:loginscreen/screens/animation.dart';
import 'dart:async';
import 'dart:ui';

import 'package:loginscreen/screens/userlogin.dart';

bool _securetext = true;

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> with TickerProviderStateMixin {
  late AnimationController controller1;
  late AnimationController controller2;
  late Animation<double> animation1;
  late Animation<double> animation2;
  late Animation<double> animation3;
  late Animation<double> animation4;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    controller1 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 3,
      ),
    );
    animation1 = Tween<double>(begin: .1, end: .15).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller1.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller1.forward();
        }
      });
    animation2 = Tween<double>(begin: .02, end: .04).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {});
      });
    controller2 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation3 = Tween<double>(begin: .41, end: .38).animate(CurvedAnimation(
      parent: controller2,
      curve: Curves.easeInOut,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller2.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller2.forward();
        }
      });
    animation4 = Tween<double>(begin: 170, end: 190).animate(
      CurvedAnimation(
        parent: controller2,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {});
      });
    Timer(Duration(milliseconds: 250), () {
      controller1.forward();
    });
    controller2.forward();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var child;
    String? _password;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
              height: size.height,
              child: Stack(children: [
                Positioned(
                  top: size.height * (animation2.value + .58),
                  left: size.width * .21,
                  child: CustomPaint(
                    painter: MyPainter(50),
                  ),
                ),
                Positioned(
                  top: size.height * .98,
                  left: size.width * .1,
                  child: CustomPaint(
                    painter: MyPainter(animation4.value - 30),
                  ),
                ),
                Positioned(
                  top: size.height * .5,
                  left: size.width * (animation2.value + .8),
                  child: CustomPaint(
                    painter: MyPainter(30),
                  ),
                ),
                Positioned(
                  top: size.height * animation3.value,
                  left: size.width * (animation1.value + .1),
                  child: CustomPaint(
                    painter: MyPainter(60),
                  ),
                ),
                Positioned(
                  top: size.height * .1,
                  left: size.width * .8,
                  child: CustomPaint(
                    painter: MyPainter(animation4.value),
                  ),
                ),
                // Container(
                //   alignment: Alignment.topCenter,
                //   child: Text(
                //     "Login",
                //     style: TextStyle(fontSize: 20.0),
                //   ),
                // ),
                FadeAnimation(
                  1.5,
                  Column(
                    key: _formKey,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 0, right: 400),
                        child: Text(
                          "Signup",
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 108, 152, 235),
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                      Padding(
                          padding: EdgeInsets.only(
                              top: 110, left: 35, right: 35, bottom: 5),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(64, 108, 153, 235),
                                borderRadius: new BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 5),
                                  child: TextFormField(
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        prefixIcon:
                                            Icon(Icons.account_circle_outlined),
                                        iconColor: Colors.white,
                                        labelText: 'First Name',
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                      ))))),
                      Padding(
                          padding: EdgeInsets.only(
                              top: 20, left: 35, right: 35, bottom: 5),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(64, 108, 153, 235),
                                borderRadius: new BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 5),
                                  child: TextFormField(
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        prefixIcon: Icon(
                                            Icons.drive_file_rename_outline),
                                        iconColor: Colors.white,
                                        labelText: 'Last Name',
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                      ))))),

                      Padding(
                          padding: EdgeInsets.only(
                              top: 20, left: 35, right: 35, bottom: 5),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(64, 108, 153, 235),
                                borderRadius: new BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 5),
                                  child: TextFormField(
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        prefixIcon: Icon(Icons.email_outlined),
                                        iconColor: Colors.white,
                                        labelText: 'email-id',
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                      ))))),
                      Padding(
                          padding: EdgeInsets.only(
                              top: 20, left: 35, right: 35, bottom: 5),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(64, 108, 153, 235),
                                borderRadius: new BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 5),
                                  child: TextFormField(
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        prefixIcon:
                                            Icon(Icons.phone_android_outlined),
                                        iconColor: Colors.white,
                                        labelText: 'Contact no.',
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                      ))))),
                      Padding(
                          padding: EdgeInsets.only(
                              top: 20, left: 35, right: 35, bottom: 5),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(64, 108, 153, 235),
                                borderRadius: new BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 5),
                                  child: TextFormField(
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        prefixIcon: Icon(Icons.lock_outline),
                                        iconColor: Colors.white,
                                        labelText: 'New Password',
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                      ))))),
                      Padding(
                          padding: EdgeInsets.only(
                              top: 20, left: 35, right: 35, bottom: 5),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(64, 108, 153, 235),
                                borderRadius: new BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 5),
                                  child: TextFormField(
                                      controller: passwordcontroller,
                                      obscureText: _securetext,
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          iconColor: Colors.white,
                                          labelText: 'Confrom Password',
                                          labelStyle:
                                              TextStyle(color: Colors.white),
                                          prefixIcon: IconButton(
                                            icon: Icon(_securetext
                                                ? Icons.lock_clock_outlined
                                                : Icons.lock_open),
                                            onPressed: () {
                                              setState(() {
                                                _securetext = !_securetext;
                                              });
                                            },
                                          )))))),

                      Padding(
                          padding: const EdgeInsets.only(
                              top: 155, right: 116, left: 116),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            child: RaisedButton(
                              child: Text(
                                'Submit',
                              ),
                              color: Color.fromARGB(207, 56, 83, 235),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0))),
                              onPressed: () {},
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),

                      //child:TextButton(onPressed: onPressed, child:Text(For))
                    ],
                  ),
                )
              ])),
        ),
      ),
    );
  }

  Widget component2(String string, double width, VoidCallback voidCallback) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: voidCallback,
          child: Container(
            height: size.width / 8,
            width: size.width / width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(112, 112, 112, 112),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              string,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final double radius;
  MyPainter(this.radius);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.purple, Colors.blue]).createShader(Rect.fromCircle(
        center: Offset(0, 0),
        radius: radius,
      ));
    canvas.drawCircle(Offset.zero, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}