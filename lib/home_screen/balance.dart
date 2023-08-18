import 'package:flutter/material.dart';


class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10,right: 10,top: 5),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const [
              Text('Total Balance',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(height: 10,),
              Text('\$26',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40,letterSpacing: 1),),
            ],
          )
        ],
      ),
    );
  }
}
