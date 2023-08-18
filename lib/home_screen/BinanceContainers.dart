import 'package:flutter/material.dart';

class BinanceContainer extends StatelessWidget {
  BinanceContainer({required this.text1,required this.text2, required this.text3,required this.color,required this.icon});
  String text1 ;
  String text2;
  String text3;
  IconData icon ;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width * 0.46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white24
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1,style:const TextStyle(color: Colors.white,fontSize: 18) ,),
            SizedBox(height: 5,),
            Row(
              children: [
                Text(
                  '$text2 \n$text3',
                  style:const TextStyle(color: Colors.white54,fontSize: 11) ,),
               const  SizedBox(width:7,),
                Icon(icon ,size: 30,color:color ,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
