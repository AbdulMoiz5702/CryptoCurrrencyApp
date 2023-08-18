import 'package:flutter/material.dart';



class UserContainer extends StatelessWidget {

  UserContainer({required this.text,this.ontap});

  String text ;
  VoidCallback ? ontap ;



  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff08B8E0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 45,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration:const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Padding(
              padding:  const EdgeInsets.only(left: 15),
              child: Text(text,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
            ),
          ),
          IconButton(onPressed:ontap , icon: Icon(Icons.edit,color: Colors.black,size: 20,)),
        ],
      ),
    );
  }
}
