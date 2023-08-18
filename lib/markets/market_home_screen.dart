import 'package:flutter/material.dart';
import './market_option_Screen.dart';
import './market_main_container_screen.dart';


class MarketHomeScreen extends StatelessWidget {
  const MarketHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 10,),
        MarketOptionScreen(),
        SizedBox(height: 20,),
        MianContainerScreen(),
      ],
    );
  }
}
