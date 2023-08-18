import 'package:exchange/authentaction/auth_ui.dart';
import 'package:exchange/authentaction/forget_password_Screen.dart';
import 'package:exchange/authentaction/google_authentaction.dart';
import 'package:exchange/authentaction/signUp_screen.dart';
import 'package:exchange/gate_way_screen.dart';
import 'package:exchange/services/message_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool hide = true ;
  void  changeHide (){
    setState(() {
      hide=!hide ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:const  Color(0xff0D1019),
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
                  const  SizedBox(height: 20,),
                  AuthUi(icon: Icons.mail, text: 'Phone no / @mail',type: TextInputType.emailAddress,eye: null,hide: false,controller: emailController,),
                  const  SizedBox(height: 20,),
                  AuthUi(icon: Icons.lock, text: 'Password',type: TextInputType.multiline,eye:hide ?Icons.visibility : Icons.visibility_off_outlined,hide: hide,change:changeHide,controller: passwordController,),
                  const  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account ?',style: TextStyle(color: Colors.white),),
                      const  SizedBox(width: 3,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const SignUpScreen(),));
                          },
                          child:const Text('Signup ',style: TextStyle(color: Colors.blue),)),
                    ],
                  ),
                  const  SizedBox(height: 10,),
                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 30),
                    child: InkWell(
                      onTap: (){
                        auth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value){
                          MessageScreen().message('Login Successfully');
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>const GateWay()));
                        }).onError((error, stackTrace){
                          MessageScreen().message(error.toString());
                        });
                      },
                      child:const Card(
                          child: Center(
                            heightFactor: 2,
                            child: Text('Login',style: TextStyle(color: Colors.black),),
                          )
                      ),
                    ),
                  ),
                  const  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const  ForgetPassword()));
                    },
                      child: const Text('Forget Password ?',style: TextStyle(color: Colors.blue),)),

                ],
              ),
            )
        ),
      ),
    );
  }
}
