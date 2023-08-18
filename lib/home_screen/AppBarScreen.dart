import 'package:exchange/home_screen/search_feild/search_feild_screen.dart';
import 'package:flutter/material.dart';

import 'homeScreen_appBar_icons.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  State<AppBarScreen> createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
TextEditingController currencyController =TextEditingController();
  double width = 120;
  bool animate = false ;

  void _container () {
    setState(() {
      width = 150;
      animate = true ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 40,),
          // AppBarIcons(
          //     icon: Icons.account_circle_outlined, color: Colors.blueAccent,onTap: (){
          //
          // },),
          InkWell(
            onTap: _container,
            child: AnimatedContainer(
              duration:const Duration(seconds: 2),
              height: 35,
              width: width,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: animate ? TextFormField(
                controller: currencyController,
                onFieldSubmitted: (value){
                  value = currencyController.text.toUpperCase();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchFieldScreen(
                    title: value,
                  )));
                },
                style:const TextStyle(color: Colors.white,fontSize: 15),
                keyboardType:TextInputType.text,
                decoration:const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,color: Colors.white54,),
                    hintText: 'search',
                    hintStyle: TextStyle(color: Colors.white54)
                ),
              ) : const Padding(
                padding:  EdgeInsets.only(right: 65),
                child: Icon(Icons.search,color: Colors.white54,),
              ),
              ),
            ),
          AppBarIcons(icon: Icons.qr_code_scanner_outlined, color: Colors.blueGrey),
          AppBarIcons(icon: Icons.support_agent_outlined, color: Colors.blueGrey),
          AppBarIcons(icon: Icons.notifications_outlined, color: Colors.blueGrey),
          AppBarIcons(icon: Icons.psychology_outlined, color: Colors.blueGrey),
        ],
      ),
    );
  }
}
