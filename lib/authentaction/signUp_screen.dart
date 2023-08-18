import 'package:exchange/authentaction/login_screen.dart';
import 'package:exchange/gate_way_screen.dart';
import 'package:exchange/services/message_widget.dart';
import 'package:flutter/material.dart';
import './auth_ui.dart';
import 'package:firebase_auth/firebase_auth.dart';




class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController() ;
  TextEditingController passwordController = TextEditingController() ;
  TextEditingController confirmController = TextEditingController() ;

  FirebaseAuth auth = FirebaseAuth.instance ;

 bool hide = true ;
 bool hide1 = true ;

 void  changeHide (){
   setState(() {
     hide=!hide ;
   });
 }
 void  changeHide1 (){
   setState(() {
     hide1=!hide1 ;
   });
 }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff0D1019),
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    decoration:const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/block.png'),fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  AuthUi(icon: Icons.mail, text: 'Phone no / @mail',type: TextInputType.emailAddress,eye: null,hide: false,controller: emailController,),
                 const  SizedBox(height: 20,),
                  AuthUi(icon: Icons.lock, text: 'Password',type: TextInputType.multiline,eye:hide ?Icons.visibility : Icons.visibility_off_outlined,hide: hide,change:changeHide,controller: passwordController,),
                  const  SizedBox(height: 20,),
                  AuthUi(icon: Icons.key_outlined, text: 'Confirm Password',type: TextInputType.multiline,eye:hide1 ?Icons.visibility : Icons.visibility_off_outlined,hide: hide1,change:changeHide1,controller: confirmController,),
                  const  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const Text('Already have an account ?',style: TextStyle(color: Colors.white),),
                    const  SizedBox(width: 3,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>const LoginScreen()));
                        },
                          child:const Text('Login ',style: TextStyle(color: Colors.blue),)),
                    ],
                  ),
                  const  SizedBox(height: 10,),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child:  InkWell(
                      onTap: () {
                        if (passwordController.text == confirmController.text){
                          auth.createUserWithEmailAndPassword(email:emailController.text, password: passwordController.text).then((value){
                            MessageScreen().message('Signup Successfully');
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const  GateWay()));
                            print('working');
                          }).onError((error, stackTrace){
                            MessageScreen().message(error.toString());
                            print('error');
                          });
                        }else {
                          MessageScreen().message('Please confirm password');
                        }

                      },
                      child:const Card(
                        child: Center(
                          heightFactor: 2,
                          child: Text('SignUp',style: TextStyle(color: Colors.black),),
                        )
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}

