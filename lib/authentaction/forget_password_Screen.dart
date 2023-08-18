import 'package:exchange/services/message_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './auth_ui.dart';



class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController = TextEditingController();
  bool hide = false;
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color(0xff0D1019),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AuthUi(icon: Icons.mail, text: 'Email', eye: null, hide: hide,controller: emailController,),
            SizedBox(height: 25,),
            InkWell(
              onTap: (){
                auth.sendPasswordResetEmail(email: emailController.text.toString().trim()).then((value){
                  MessageScreen().message('Password reset email has been sent');
                }).onError((error, stackTrace) {
                  MessageScreen().message(error.toString());
                });
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:const Center(
                  child: Text('Reset Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
