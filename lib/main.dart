// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';



void main() {
  runApp( MyApp());
}

class  MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text("Login"),
          automaticallyImplyLeading: true,


        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // for lock icon
              Align(
                alignment: Alignment(0, -0.9),
                child: Icon(
                  Icons.lock,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 100,),
              //textBox for email
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Email..",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 35,),

              //password
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Passowrd..",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                obscureText: true,
              ),
              
              ElevatedButton(onPressed: () {}, child: Text("Jones.."),)


            ],
          ),
        ),


      ),
    );
  }
}