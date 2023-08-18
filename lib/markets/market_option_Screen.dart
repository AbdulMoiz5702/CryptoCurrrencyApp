import 'package:flutter/material.dart';


class MarketOptionScreen extends StatelessWidget {
  const MarketOptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:const [
          Text('Favorite',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w800),),
          Text('Spot',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w800),),
          Text('Futures',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w800),),
          Text('Data',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w800),),
          Text('Zones',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w800),),

      ],),
    );
  }
}
