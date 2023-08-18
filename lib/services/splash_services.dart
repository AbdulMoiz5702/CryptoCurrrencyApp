import 'package:exchange/authentaction/login_screen.dart';
import 'package:exchange/authentaction/signUp_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SplashServices {

  final auth = FirebaseAuth.instance;

 void splash (BuildContext context){
   Future.delayed(const Duration(seconds: 6),(){
     Navigator.push(context, MaterialPageRoute(builder: (context){
       final user = auth.currentUser ;
       if(user == auth.currentUser){
        return SignUpScreen();
       }else{
        return LoginScreen();
       }
     }));
   });
 }



}