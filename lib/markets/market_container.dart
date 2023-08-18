import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


class MarketContainer extends StatefulWidget {
  MarketContainer({required this.name,required this.price});

  final String name ;
  final String price;

  @override
  State<MarketContainer> createState() => _MarketContainerState();
}

class _MarketContainerState extends State<MarketContainer> {
  var binanceData ;
  Future<void> getCurrencyValue ()async {
    http.Response  binanceResponse =  await http.get(Uri.parse('https://api.kucoin.com/api/v1/market/stats?symbol=${widget.name}-USDT'));
    binanceData = jsonDecode(binanceResponse.body.toString());
    if(binanceResponse.statusCode == 200){
      debugPrint('working');
    }else{
      debugPrint(binanceResponse.statusCode.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getCurrencyValue(),
        builder: (context ,AsyncSnapshot snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
           return Container(
             height: 100,
             width: 170,
             decoration: BoxDecoration(
               color: Colors.white24,
               borderRadius: BorderRadius.circular(5),
             ),
             child: Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Row(
                     children: [
                       Text(widget.name,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                       const  SizedBox(width: 3,),
                       const Text('/ USDT',style: TextStyle(color: Colors.white60,fontSize: 10),)
                     ],
                   ),
                   const SizedBox(height: 8,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children:const [
                       Text('--/-',style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.w500),),
                       SizedBox(width: 10,),
                       Text('\$',style: TextStyle(color: Colors.greenAccent,fontSize:18,fontWeight: FontWeight.bold),),
                     ],
                   ),
                   const SizedBox(height: 8,),
                   const Icon(Icons.check_circle_outlined,color: Colors.yellow,size: 20,)
                 ],

               ),
             ),
           );
          }else{
            return Container(
              height: 100,
              width: 170,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(widget.name,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        const  SizedBox(width: 3,),
                        const Text('/ USDT',style: TextStyle(color: Colors.white60,fontSize: 10),)
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(binanceData['data']['last'].toString(),style:const TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.w500),),
                        const  SizedBox(width: 10,),
                        const  Text('\$',style: TextStyle(color: Colors.greenAccent,fontSize:18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    const Icon(Icons.check_circle_outlined,color: Colors.yellow,size: 20,)
                  ],

                ),
              ),
            );
          }
        }
    );
  }
}
