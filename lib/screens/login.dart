// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:galry/screens/landing.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_button/sign_button.dart';

import '../auth_service.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Sign In',
                style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(204, 204, 204, 0.5),
                      blurRadius: 8.0,
                      spreadRadius: 1.0,
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                    )
                  ],
                ),
                child: Image.asset(
                  'lib/assets/login_img.png',
                  height: 200,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(102, 102, 102, 1),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(102, 102, 102, 1),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: "Enter Username Here",
                        labelText: "Username",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(204, 51, 102, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(102, 102, 102, 1),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(102, 102, 102, 1),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: "Enter Password Here",
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(204, 51, 102, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 40),
                  foregroundColor: Colors.white,
                  backgroundColor:
                      Color.fromRGBO(204, 51, 102, 1.0), // foreground
                ),
                onPressed: () {},
                child: Text(
                  'Log In',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Or',
                style: TextStyle(
                  color: Color.fromRGBO(102, 102, 102, 1),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SignInButton(
                buttonType: ButtonType.google,
                buttonSize: ButtonSize.medium,
                btnTextColor: Color.fromRGBO(102, 102, 102, 1.0),
                btnColor: Color.fromRGBO(255, 255, 255, 1.0),
                onPressed: () {
                  AuthService().signInWithGoogle();
                },
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
