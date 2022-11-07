import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginPageState();
}

class _LoginPageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons
                  .phone_android_rounded, // idhar image daalna hain badme abhi icon hain
              size: 80,
            ),
            SizedBox(height: 35),
            //Hello!!!!!
            Text('Hello Again!',
                style: GoogleFonts.bebasNeue(
                  fontSize: 54,
                )),
            SizedBox(height: 10),
            Text(
              'Welcome Back',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            //email field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  border: Border.all(color: Colors.white),
                  borderRadius:
                      BorderRadius.circular(12), // circular box deta hain
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            //password field
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 25.0), //padding karega password box ka
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left:
                          20.0), // box ke andar text aur marzin ke bich paddind deta hain
                  child: TextField(
                    obscureText: true, // password dekhne nahi deta
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:
                          'Password', //box ke andar default text show karta hain
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            //sign in button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(12), //
                ),
                child: Center(
                    child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                )),
              ),
            ),
            SizedBox(
                height:
                    25), // agle wale se pichle wale ke beech thora space deta hain
            //not a member? register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
