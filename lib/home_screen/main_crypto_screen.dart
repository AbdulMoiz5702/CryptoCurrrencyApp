import 'package:exchange/home_screen/crypto_container.dart';
import 'package:flutter/material.dart';
import './candelist_chart_screen.dart';

class CryptoScreenInfo extends StatelessWidget {
  CryptoScreenInfo({required this.buyPrice,required this.lastPrice ,required this.sellPrice,required this.todayHigh,required this.todayLow,required this.volume,required this.name,});

  final String buyPrice ;
  final String sellPrice ;
  final String lastPrice ;
  final String todayLow;
  final String todayHigh;
  final String volume;
  final String name ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0D1019),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back,color: Colors.blue,size: 25,)),
      ),
      backgroundColor: const Color(0xff0D1019),
      body: SafeArea(
        child: SingleChildScrollView(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
               Text(
                '$name -USDT',
                style:const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              // const SizedBox(
              //   height: 40,
              // ),
              Row(
                children: [
                  CryptoContainer(work: 'Buy Price',info: buyPrice,),
                  CryptoContainer(work: 'Sell Price',info: sellPrice,),
                  CryptoContainer(work: 'Last Price',info: lastPrice,),

                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CryptoContainer(work: 'Today Low',info: todayLow,),
                  CryptoContainer(work: 'Today High',info: todayHigh,),
                  CryptoContainer(work: 'volume',info: volume,),
                ],
              ),
            const  SizedBox(height:10,),
              Container(
                margin:const EdgeInsets.only(left: 10),
                height: 500,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Charts(),
              )
              // const SizedBox(
              //   height: 30,
              // ),
              // CryptoContainer(work: 'Current Price',info: lastPrice,),
            ],
          ),
        ),
      ),
    );
  }
}
