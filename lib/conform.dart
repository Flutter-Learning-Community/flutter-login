import 'package:flutter/material.dart';

import 'FadeAnimation.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _securetext = true;
  bool _conformtext = true;
  final formKey = GlobalKey<FormState>();
  var newpasswordcontroller = TextEditingController();
  var conpasswordcontroller = TextEditingController();

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
                  FadeAnimation(
                      1,
                      Text(
                        "Confirm Password",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                  SizedBox(
                    height: 10,
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
                          FadeAnimation(
                            1.4,
                            Container(
                                child: Form(
                              key: formKey,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FadeAnimation(
                                    2.5,
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: TextFormField(
                                        controller: newpasswordcontroller,
                                        decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.orange,
                                                  width: 2.0),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            hintText: "New Password",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            suffixIcon: IconButton(
                                                icon: Icon(
                                                  _securetext
                                                      ? Icons.remove_red_eye
                                                      : Icons
                                                          .remove_red_eye_outlined,
                                                  color: Colors.orange[900],
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    _securetext = !_securetext;
                                                  });
                                                })),
                                        validator: (value) {
                                          if (value!.trim().isEmpty ||
                                              !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                                  .hasMatch(value)) {
                                            return "Invalid Password";
                                          } else {
                                            return null;
                                          }
                                        },
                                        obscureText: _securetext,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FadeAnimation(
                                    3,
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: TextFormField(
                                        controller: conpasswordcontroller,
                                        decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.orange,
                                                  width: 2.0),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            hintText: "confirm password",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            suffixIcon: IconButton(
                                                icon: Icon(
                                                  _conformtext
                                                      ? Icons.remove_red_eye
                                                      : Icons
                                                          .remove_red_eye_outlined,
                                                  color: Colors.orange[900],
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    _conformtext =
                                                        !_conformtext;
                                                  });
                                                })),
                                        validator: (value) {
                                          if (value!.trim().isEmpty) {
                                            return "Invalid Password";
                                          }
                                          if (value !=
                                              newpasswordcontroller.text) {
                                            return "Not match";
                                          }
                                        },
                                        obscureText: _conformtext,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          FadeAnimation(
                              5,
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.orange[900]),
                                child: Center(
                                    child: TextButton(
                                  child: Text(
                                    "Submit",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content:
                                                  Text("Password changed")));
                                    }
                                  },
                                )),
                              )),
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
