import 'package:flutter/material.dart';



class ProfileRow extends StatefulWidget {

  ProfileRow({required this.firstName});

  String firstName ;
  @override
  State<ProfileRow> createState() => _ProfileRowState();
}

class _ProfileRowState extends State<ProfileRow> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,right: 10,left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         const CircleAvatar(
            child: Center(child: Icon(Icons.sentiment_very_dissatisfied_outlined,color: Colors.black,size: 40,)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text(widget.firstName,
            style:const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              const SizedBox(height: 4,),
              const Text('ID : 45702445',style: TextStyle(color: Colors.white38,fontWeight:FontWeight.w400),),
            ],
          ),
          Container(
            height: 30,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black45,
            ),
            child: Center(
              child: Row(
                children:const [
                  SizedBox(width: 5,),
                  Icon(Icons.verified_outlined,color: Colors.green,),
                  SizedBox(width: 5,),
                  Text('Verified',style: TextStyle(color: Colors.green,),),
                  SizedBox(width: 5,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
