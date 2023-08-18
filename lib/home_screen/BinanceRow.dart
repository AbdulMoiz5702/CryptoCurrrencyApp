import 'package:flutter/material.dart';

import 'BinanceContainers.dart';



class BinanceRow extends StatelessWidget {
  const BinanceRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:7),
      child: Row(
        children: [
          BinanceContainer(text1:'P2P trading', text2: 'Bank Transfer,Digital',text3: 'Wallet Transfer',icon: Icons.dashboard_outlined,color: Colors.indigoAccent,),
        const  SizedBox(width: 13,),
          BinanceContainer(text1:'Deposit PKR', text2: 'Multiple Payment',text3: 'Method',icon: Icons.monetization_on_outlined,color: Colors.green,)
        ],
      ),
    );
  }
}
