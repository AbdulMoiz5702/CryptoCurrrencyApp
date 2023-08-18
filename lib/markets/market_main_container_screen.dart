import 'package:flutter/material.dart';
import './marker_popular_pairs_container.dart';


class MianContainerScreen extends StatelessWidget {
  const MianContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.height * 1,
          decoration:const BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.only(topLeft:Radius.circular(45),topRight: Radius.circular(45)),
          ),
          child: Column(
            children: [
              const  SizedBox(height: 50,),
              const Text('Popular Pairs',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize:20),),
              const SizedBox(height: 30,),
              PopularPairsContainer(name: 'BTC',name2: 'ETH',price: '27456.01',price2: '1607.09',),
              const SizedBox(height: 9,),
               PopularPairsContainer(name: 'DOT',name2: 'ADA',price: '8.6',price2: '0.3600',),
              const SizedBox(height: 9,),
              PopularPairsContainer(name: 'LINK',name2: 'UNI',price: '6.07',price2: '7.04',),
              const SizedBox(height: 9,),
              PopularPairsContainer(name: 'XRP',name2: 'FIL',price: '0.6679',price2: '8.67',),
            ],
          ),
        ),
      ],
    );
  }
}
