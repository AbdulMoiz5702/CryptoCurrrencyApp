import 'package:exchange/authentaction/login_screen.dart';
import 'package:exchange/services/message_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Logout extends StatelessWidget {

FirebaseAuth auth =FirebaseAuth.instance ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        auth.signOut().then((value){
          MessageScreen().message('Logout Successfully');
          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
        }).onError((error, stackTrace) {
          MessageScreen().message(error.toString());
        });
      },
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:const Color(0xff08B8E0),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children:const [
                SizedBox(width: 70,),
                Text('Logout' ,style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16) ,),
                SizedBox(width: 40,),
                Icon(Icons.logout_sharp,color: Colors.black,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
