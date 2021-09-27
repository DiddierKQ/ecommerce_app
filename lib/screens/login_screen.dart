import 'package:ecommerce_app/screens/signup_screen.dart';
import 'package:ecommerce_app/widgets/appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: const Color(0xFFd2c4a8),
      appBar: AppBarWidget(title: "Coffee shop"),
      body: Center(
        child: Container(        
          margin: const EdgeInsets.all(32.0),
          padding: const EdgeInsets.all(16.0),
          height: 820,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    padding: const EdgeInsets.all(40),
                    child: Image.asset(
                      "assets/icons/coffee-cup.png",
                      width: 200,
                    ),
                    ),
              ),
              Expanded(
                flex: 2,
                child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(bottom: 28),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: const TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF6f5015), width: 2.0),
                          ),
                          border: OutlineInputBorder(),
                          label: Text(
                            "Email address",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: const TextField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF6f5015), width: 2.0),
                          ),
                          border: OutlineInputBorder(),
                          label: Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: const Color(0xFF6f5015),
                          minimumSize: const Size(double.infinity, 60),
                        ),
                        onPressed: () {},
                        child: const Text('Log in',
                            style:
                                TextStyle(color: Colors.white, fontSize: 24)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: TextButton(
                        child: const Text(
                          "Create a new account",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF6f5015),
                          ),
                        ),
                        onPressed: () {
                          Get.to(const SignUpScreen());
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 28.0),
                      alignment: Alignment.center,
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [                        
                          InkWell(
                            onTap: () {},
                            child: Container(
                                padding: const EdgeInsets.all(20.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff39579A),
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.facebookF,
                                  color: Colors.white,
                                ),
                            ), //
                          ),
                          const SizedBox(width: 16.0,),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(20.0),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffDF4A32),
                              ),
                              child: const Icon(
                                FontAwesomeIcons.googlePlusG,
                                color: Colors.white,
                              ),
                            ), //
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 36),
                alignment: Alignment.center,
                child: const Text(
                  "Developed by Diddier Kantun",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6f5015),
                  ),
                ),
              ),              
            ],
          ),
        ),
      ),
    );
  }
}
