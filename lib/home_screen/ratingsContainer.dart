import 'package:flutter/material.dart';


class RatingContainer extends StatelessWidget {
  RatingContainer({required this.text,});

  String text ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(left: 10),
      height: 30,
      width: 70,
      decoration: BoxDecoration(
        color:Colors.white54,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: Text(text,style:const TextStyle(color: Colors.white),),
      ),
    );
  }
}
