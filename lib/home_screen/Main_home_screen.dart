import 'package:flutter/material.dart';
import './balance.dart';
import './rowIcons_screen.dart';
import './BinanceRow.dart';
import './ratingsRow.dart';
import './apiwidget.dart';
import './info_row.dart';

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,

      child: Column(
        children: [
          const  SizedBox(height: 10,),
          const Balance(),
          const SizedBox(height: 20,),
          const RowIconsScreen(),
          const SizedBox(height: 20,),
          const BinanceRow(),
          const SizedBox(height: 20,),
         const RatingsRow(),
          const SizedBox(height: 20,),
          InfoRow(),
          const  SizedBox(height: 10,),
          ApiKeyWidget(name: 'BTC',),
          const SizedBox(height: 35,),
          ApiKeyWidget(name: 'ETH',),
          const SizedBox(height:35,),
          ApiKeyWidget(name: 'DOT',),
          const SizedBox(height:35,),
          ApiKeyWidget(name: 'LINK',),
          const SizedBox(height:35,),
          ApiKeyWidget(name: 'UNI',),
          const SizedBox(height:35,),
          ApiKeyWidget(name: 'ADA',),
          const SizedBox(height:35,),
          ApiKeyWidget(name: 'BNB',),
          const SizedBox(height:35,),
        ],
      ),
    );
  }
}
