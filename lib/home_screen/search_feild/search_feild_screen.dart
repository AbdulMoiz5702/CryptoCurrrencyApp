import 'package:exchange/home_screen/search_feild/search_feild_contrainers.dart';
import 'package:flutter/material.dart';



class SearchFieldScreen extends StatelessWidget {
  SearchFieldScreen({required this.title});
  String title ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff0D1019),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
               const SizedBox(height: 100,),
                 Text(title,style:const TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.w700),),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SearchContainer(text: 'USDT',name: title,),
                    SearchContainer(text: "BUSD",name: title,),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SearchContainer(text: 'USD',name: title,),
                    SearchContainer(text: 'BNB',name: title,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
