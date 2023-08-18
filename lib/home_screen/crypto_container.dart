import 'package:flutter/material.dart';


class CryptoContainer extends StatelessWidget {
  CryptoContainer({required this.work,required this.info});

  final String work ;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(work,style:const TextStyle(color: Colors.white60),),
       const SizedBox(height: 10,),
        Container(
          margin:const EdgeInsets.only(left:10),
          height: 50,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text(info.toString(),style:const TextStyle(color: Colors.white,fontWeight: FontWeight.w700),)),
        ),
      ],
    );
  }
}
