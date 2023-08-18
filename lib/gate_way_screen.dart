import 'package:exchange/home_screen/Main_home_screen.dart';
import 'package:exchange/home_screen/drawer_screen/drawer_column.dart';
import 'package:exchange/markets/market_home_screen.dart';
import 'package:exchange/trade_screen/trade_Screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'home_screen/AppBarScreen.dart';
import 'markets/market_appBar.dart';
import 'trade_screen/trade_screen.dart';

class GateWay extends StatefulWidget {
  const GateWay({Key? key}) : super(key: key);

  @override
  State<GateWay> createState() => _GateWayState();
}

class _GateWayState extends State<GateWay> {
  int indexx = 0;
  void screen(int index) {
    setState(() {
      indexx = index;
    });
  }

  List<Widget> screens = [
    MainHomeScreen(),
    const MarketHomeScreen(),
  const  TradeScrenn(),
  ];

  List<Widget> bars = [
    const AppBarScreen(),
    const MarketAppBar(),
    const TradeScreenAppBar(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          surfaceTintColor: Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
           backgroundColor: Colors.blueGrey,
          elevation: 10,
          width: MediaQuery.of(context).size.width * 0.9,
          child: SingleChildScrollView(
            child: DrawerColumn(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xff33363D),
          flexibleSpace: bars[indexx],
          leading: Builder(
              builder: (context){
                 if (bars[indexx] == bars[0]){
                   return IconButton(
                       onPressed: () => Scaffold.of(context).openDrawer(),
                       icon: const Icon(
                         Icons.account_circle_outlined,
                         color: Colors.blueAccent,
                         size: 30,
                       ));
                 }else{
                   return Container();
                 }
              } ),
        ),
        backgroundColor: const Color(0xff0D1019),
        //Color(0xff100B10),
        body: screens[indexx],
        bottomNavigationBar: BottomNavigationBar(
          onTap: screen,
          selectedFontSize: 12,
          unselectedIconTheme: const IconThemeData(size: 21),
          selectedIconTheme:
              const IconThemeData(color: Colors.blueAccent, size: 26),
          showUnselectedLabels: true,
          unselectedFontSize: 9,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.white54,
          backgroundColor: Colors.black26,
          type: BottomNavigationBarType.fixed,
          // onTap: screen,
          currentIndex: indexx,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bar_chart_outlined,
                ),
                label: 'Markets'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.currency_bitcoin_outlined,
                ),
                label: 'Trade'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.fitbit_outlined,
                ),
                label: 'Future'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.wallet_outlined,
                ),
                label: 'Wallet'),
          ],
        ),
      ),
    );
  }
}
