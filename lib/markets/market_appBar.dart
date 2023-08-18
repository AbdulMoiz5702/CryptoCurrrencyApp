import 'package:flutter/material.dart';


class MarketAppBar extends StatefulWidget {
  const MarketAppBar({Key? key}) : super(key: key);

  @override
  State<MarketAppBar> createState() => _MarketAppBarState();
}

class _MarketAppBarState extends State<MarketAppBar> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 47,left: 7),
      child: Row(
        children: [
          Container(
            height: 35,
            width: MediaQuery.of(context).size.width * 0.85,
           decoration: BoxDecoration(
             color: Colors.white24,
             borderRadius: BorderRadius.circular(20),
           ),
            child: Row(
              children: [
                const  SizedBox(width:8,),
               const  Icon(Icons.search,color: Colors.white38,size:23,),
               const  SizedBox(width:5,),
                Container(
                  width: 270,
                  child: TextFormField(
                    controller: controller,
                    style: const TextStyle(color: Colors.black),
                    decoration:const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'search coin Pair',
                      hintStyle: TextStyle(color: Colors.white38,fontWeight: FontWeight.w400,fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 5,),
          const Icon(Icons.dataset_linked_outlined ,color: Colors.blue,size:30,),
        ],
      ),
    );
  }
}
