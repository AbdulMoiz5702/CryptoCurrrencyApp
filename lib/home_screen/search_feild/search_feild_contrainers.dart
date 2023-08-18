import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class SearchContainer extends StatefulWidget {
  SearchContainer({required this.text,required this.name});
  final String text ;
  final String name ;

  @override
  State<SearchContainer> createState() => _SearchContainerState();
}

class _SearchContainerState extends State<SearchContainer> {
  String apikey = '96F42BD3-42B3-46A6-AB59-577850204D34' ;
  var data ;
  Future<void> getCurrencyValue ()async {
    http.Response response =await http.get(Uri.parse('https://rest.coinapi.io/v1/exchangerate/${widget.name}/${widget.text}?apikey=$apikey'));
    data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      debugPrint('search');
    }else{
      debugPrint(response.statusCode.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getCurrencyValue(),
        builder: (context,AsyncSnapshot snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
         return Container(
            height: 90,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children:   [
                const SizedBox(height: 10,),
                Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 5),
                  child:
                  Text('${widget.name}/${widget.text}',style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),

                ),
                const  SizedBox(height: 10,),
              const  Text('--/-',style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),),
              ],
            ),
          );
        }else{
          return Container(
            height: 90,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children:   [
                const SizedBox(height: 10,),
                Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 5),
                  child:
                  Text('${widget.name}/${widget.text}',style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),

                ),
                const  SizedBox(height: 10,),
                Text(data["rate"].toStringAsFixed(2),style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),),
              ],
            ),
          );
        }
        }
    );
  }
}
