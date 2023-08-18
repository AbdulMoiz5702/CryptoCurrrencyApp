import 'package:flutter/material.dart';
import './market_container.dart';


class PopularPairsContainer extends StatelessWidget {
   PopularPairsContainer({required this.name,required this.name2,required this.price,required this.price2});

  final String name;
   final String name2;
   final String price;
   final String price2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MarketContainer(name:name,price: price,),
          MarketContainer(name: name2,price: price2,),
        ],
      ),
    );
  }
}
