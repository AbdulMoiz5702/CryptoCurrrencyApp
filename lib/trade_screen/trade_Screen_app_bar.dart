import 'package:flutter/material.dart';

class TradeScreenAppBar extends StatelessWidget {
  const TradeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 70,
            decoration: BoxDecoration(
              color: const Color(0xff0D1019),
              borderRadius: BorderRadius.circular(5),
            ),

            child:const Center(child:  Text('Futures',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),)),
          ),
          Container(
            height: 30,
            width: 70,
            decoration: BoxDecoration(
              color: const Color(0xff0D1019),
              borderRadius: BorderRadius.circular(5),
            ),
            child:const Center(child:  Text('Fait',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),)),
          ),
          Container(
            height: 30,
            width: 70,
            decoration: BoxDecoration(
              color: const Color(0xff0D1019),
              borderRadius: BorderRadius.circular(5),
            ),
            child:const Center(child:  Text('Margin',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),)),
          ),
          Container(
            height: 30,
            width: 70,
            decoration: BoxDecoration(
              color: const Color(0xff0D1019),
              borderRadius: BorderRadius.circular(5),
            ),
            child:const Center(child:  Text('Spot',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),)),
          ),
        ],
      ),
    );
  }
}
