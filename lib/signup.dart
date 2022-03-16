import 'package:flutter/material.dart';
import 'Animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  var namecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var phonecontroller = TextEditingController();
  var Dobcontroller = TextEditingController();

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
                        "Register",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                    1,
                    Text(
                      "Create a new account",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
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
                                  FadeAnimation(
                                    1.5,
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: TextFormField(
                                        controller: namecontroller,
                                        decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.orange,
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          hintText: "Full Name",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty ||
                                              !RegExp(r'^[a-z A-Z,.\-]+$')
                                                  .hasMatch(value)) {
                                            return "Invalid Full Name";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FadeAnimation(
                                    2,
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.orange,
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          hintText: "Last Name",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FadeAnimation(
                                    2.5,
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: TextFormField(
                                          controller: emailcontroller,
                                          decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.orange,
                                                  width: 2.0),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            hintText: "Email",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value!.trim().isEmpty ||
                                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                    .hasMatch(value)) {
                                              return "Invalid Email";
                                            } else {
                                              return null;
                                            }
                                          }),
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
                                          controller: phonecontroller,
                                          decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.orange,
                                                  width: 2.0),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            hintText: "Phone Number",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value!.trim().isEmpty ||
                                                !RegExp(r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/')
                                                    .hasMatch(value)) {
                                              return "Invalid Phone Number";
                                            } else {
                                              return null;
                                            }
                                          }),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FadeAnimation(
                                    3.5,
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: TextFormField(
                                          controller: Dobcontroller,
                                          decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.orange,
                                                  width: 2.0),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            hintText: "D.O.B",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value!.trim().isEmpty) {
                                              return "Invalid D.O.B";
                                            } else {
                                              return null;
                                            }
                                          }),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FadeAnimation(
                                    4,
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.orange,
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          hintText: "Gender",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          FadeAnimation(
                              4.5,
                              Text(
                                "By creating an account, you accept our ",
                                style: TextStyle(
                                    color: Colors.orange[900],
                                    fontSize: 15,
                                    letterSpacing: 1),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          FadeAnimation(
                              4.5,
                              Text(
                                "Terms & Conditions",
                                style: TextStyle(
                                    color: Colors.orange[900],
                                    decoration: TextDecoration.underline,
                                    fontSize: 15,
                                    letterSpacing: 1),
                              )),
                          SizedBox(
                            height: 60,
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
                                                  Text("Successfully login")));
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
