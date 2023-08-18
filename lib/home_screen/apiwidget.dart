import 'dart:convert';
import 'package:exchange/home_screen/main_crypto_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ApiKeyWidget extends StatefulWidget {
  ApiKeyWidget({required  this.name,});

 final String name ;

  @override
  State<ApiKeyWidget> createState() => _ApiKeyWidgetState();
}

class _ApiKeyWidgetState extends State<ApiKeyWidget> {

  String apikey = 'B275FF80-BC4E-4F0D-9CEC-0CAC04272A76' ;
  var data ;
  var binanceData ;
  var chartData ;

  Future<void> getCurrencyValue ()async {
    http.Response  binanceResponse =  await http.get(Uri.parse('https://api.kucoin.com/api/v1/market/stats?symbol=${widget.name}-USDT'));
    http.Response response =await http.get(Uri.parse('https://rest.coinapi.io/v1/exchangerate/${widget.name}/USDT?apikey=$apikey'));
    http.Response chartResponse = await http.get(Uri.parse('https://api.kucoin.com/api/v1/market/candles?type=15min&symbol=BTC-USDT&startAt=1566703297&endAt=1566789757'),);
    binanceData = jsonDecode(binanceResponse.body.toString());
    data = jsonDecode(response.body.toString());
    chartData = jsonDecode(chartResponse.body.toString());
    if(response.statusCode == 200 && binanceResponse.statusCode == 200 && chartResponse.statusCode == 200){
      debugPrint('working');
    }else{
      debugPrint(chartResponse.statusCode.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getCurrencyValue(),
        builder: (context ,AsyncSnapshot snapshot){
           if(snapshot.connectionState == ConnectionState.waiting){
             return Container(
                 child: Padding(
                   padding: const EdgeInsets.only(left: 10,right: 10,),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                        Text(widget.name,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                       Container(
                         height: 35,
                         width: 110,
                         decoration: BoxDecoration(
                           color: Colors.white24,
                           borderRadius: BorderRadius.circular(7),
                         ),
                         child:const Center(child: Text('--/-',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                       ),
                       Container(
                         height: 35,
                         width: 50,
                         decoration: BoxDecoration(
                           color: Colors.white24,
                           borderRadius: BorderRadius.circular(7),
                         ),
                         child:const Center(child: Text('%',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                       ),
                     ],
                   ),
                 )
             ) ;

          }else{
             return InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => CryptoScreenInfo(
                   buyPrice: binanceData['data']['buy'].toString(),
                   sellPrice:binanceData['data']['sell'].toString() ,
                   lastPrice:binanceData['data']['last'].toString() ,
                   todayHigh:binanceData['data']['high'].toString(),
                   todayLow: binanceData['data']['low'].toString(),
                   volume: binanceData['data']['vol'].toString(),
                   name: widget.name,
                 )));
               },
               child: Container(
                   child: Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10,),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(widget.name,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                         Container(
                           height: 35,
                           width: 110,
                           decoration: BoxDecoration(
                             color: Colors.white24,
                             borderRadius: BorderRadius.circular(7),
                           ),
                           child: Center(child: Text('${data["rate"].toStringAsFixed(2)} \$',style:const TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                         ),
                         Container(
                           height: 35,
                           width: 50,
                           decoration: BoxDecoration(
                             color: Colors.white24,
                             borderRadius: BorderRadius.circular(7),
                           ),
                           child: Center(child: Text(binanceData['data']['changePrice'].toString(),style:const TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                         ),
                       ],
                     ),
                   )
               ),
             );
           }
        }
    );
  }
}
