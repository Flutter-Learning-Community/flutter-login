import 'package:flutter/material.dart';
import 'package:loginscreen/screens/animation.dart';
import 'dart:async';
import 'dart:ui';

import 'package:loginscreen/screens/userlogin.dart';

bool _securetext = true;
final formKey = GlobalKey<FormState>();
var emailcontroller = TextEditingController();
var passwordcontroller = TextEditingController();

class forgetpage extends StatefulWidget {
  @override
  _forgetpageState createState() => _forgetpageState();
}

class _forgetpageState extends State<forgetpage> with TickerProviderStateMixin {
  late AnimationController controller1;
  late AnimationController controller2;
  late Animation<double> animation1;
  late Animation<double> animation2;
  late Animation<double> animation3;
  late Animation<double> animation4;
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
                FadeAnimation(
                  1,
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: 220, left: 30, right: 40, bottom: 10),
                          child: Text(
                            "Forget Password",
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Color.fromARGB(255, 108, 152, 235),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(top: 200, left: 35, right: 35),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(64, 108, 153, 235),
                                  borderRadius: new BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 15,
                                      right: 15,
                                    ),
                                    child: Form(
                                      key: formKey,
                                      child: TextFormField(
                                        controller: emailcontroller,
                                        cursorColor: Colors.white,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon:
                                              Icon(Icons.email_outlined),
                                          iconColor: Colors.white,
                                          labelText: 'email-id',
                                          labelStyle:
                                              TextStyle(color: Colors.white),
                                        ),
                                        validator: (value) {
                                          print(value);
                                          if (value!.trim().isEmpty ||
                                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                  .hasMatch(value)) {
                                            return "Invalid email";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                    )))),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 150, right: 116, left: 116),
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              child: RaisedButton(
                                  child: Text(
                                    'Verify',
                                  ),
                                  color: Color.fromARGB(207, 56, 83, 235),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0))),
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) ;
                                    //
                                  }),
                            )),
                      ]),
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
