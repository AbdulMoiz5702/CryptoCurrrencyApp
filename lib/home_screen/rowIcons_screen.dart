import 'package:exchange/home_screen/row_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class RowIconsScreen extends StatelessWidget {
  const RowIconsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RowIcons(icon: Icons.api_outlined, text1: 'Blockchain', text2: 'Academy',url: 'https://theblockchainacademy.com/',),
          RowIcons(icon: Icons.person_add_alt_outlined, text1: 'Referral', text2: '',url: '',),
          RowIcons(icon: Icons.bar_chart_outlined, text1: 'Strategy', text2: 'Trading',url : 'https://www.tradingview.com/'),
          RowIcons(icon: Icons.savings_outlined, text1: 'Earn', text2: '',url: 'https://www.analyticsinsight.net/top-10-ways-to-make-money-with-cryptocurrency-in-2023/#:~:text=Mining%20is%20the%20most%20common,hardware%20or%20cloud%20mining%20services.',),
          RowIcons(icon: Icons.more, text1: 'More', text2: '',url:''),
        ],
      ),
    );
  }
}
