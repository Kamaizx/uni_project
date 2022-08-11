


import 'package:flutter/material.dart';
import 'package:kordofan_app/auth/login.dart';
import 'package:kordofan_app/auth/signup.dart';
import 'package:kordofan_app/grouches/grouche.dart';
import 'package:kordofan_app/grouches/meeting.dart';
import 'package:kordofan_app/home/homepage.dart';
import 'package:kordofan_app/notifictions%20and%20result/notifications.dart';
import 'package:kordofan_app/notifictions%20and%20result/result.dart';



void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          
          theme : ThemeData(
            
            primaryColor: Colors.indigo[100] ,
            primarySwatch: Colors.indigo,
            
            
            // buttonTheme: Color(Colors.blue),
            // ignore: prefer_const_constructors
            textTheme: TextTheme(
              
            ) ,
            
            ),
        home:  Login(),
        
        routes: {
          "login" : (context) =>   Login(),
          "signup" : (context) => Signup(),
          "homepage" : (context) => HomePage(),
          "grouche" : (context) => Grouche(),
          "meeting" : (context) => Meeting(),
          "notifications": (context) =>  Notific(),
          "resultz" : (context) => Resultz(),

        },
        );
      
  }
}