import 'package:flutter/material.dart';
import './home_screen/Main_home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int indexx = 0;
  void screen (int index){
    setState(() {
      indexx = index ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: screen,
      selectedFontSize: 12,
      unselectedIconTheme:const IconThemeData(size: 21),
      selectedIconTheme:const IconThemeData(color: Colors.yellow,size: 26),
      showUnselectedLabels: true,
      unselectedFontSize: 9,
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Colors.white54,
      backgroundColor: Colors.black26,
      type: BottomNavigationBarType.fixed,
      // onTap: screen,
      currentIndex:  indexx,
        items:const [
         BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined,),label: 'Markets'),
          BottomNavigationBarItem(icon: Icon(Icons.currency_bitcoin_outlined,),label: 'Trade'),
          BottomNavigationBarItem(icon: Icon(Icons.fitbit_outlined,),label: 'Future'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet_outlined,),label: 'Wallet'),
        ],
    );
  }
}

