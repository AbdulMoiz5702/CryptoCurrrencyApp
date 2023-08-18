import 'package:flutter/material.dart';



class DrawerRow extends StatelessWidget {
  DrawerRow({required this.text,required this.icon,this.onTap});

  String text;
  IconData icon ;
  VoidCallback ? onTap ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 15,right: 10,top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Row(
                children: [
                  Icon(icon,color: Colors.black87,size: 27,),
               const  SizedBox(width: 10,),

                  Text(text,style:const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            const  Padding(
             padding: EdgeInsets.only(top: 7),
             child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey,size: 20,),
           )
          ],
        ),
      ),
    );
  }
}
