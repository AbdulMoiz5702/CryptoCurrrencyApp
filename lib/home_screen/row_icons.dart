import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class RowIcons extends StatefulWidget {
  RowIcons({required this.icon,required this.text1,required this.text2,required this.url});

  IconData icon;
  String text1 ;
  String ? text2 ;
   late String url ;

  @override
  State<RowIcons> createState() => _RowIconsState();
}

class _RowIconsState extends State<RowIcons> {

  Future<void> _launchUrl() async {
    final Uri _url =Uri.parse(widget.url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch ${widget.url}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        _launchUrl();
      },
      child: Container(
        child: Center(
          child: Column(
            children: [
              Icon(widget.icon,size: 30,color:Colors.blueAccent,),
            const  SizedBox(height: 5,),
              Center(child: Text('${widget.text1} ',style:const TextStyle(color: Colors.white,fontSize: 12),)),
            const  SizedBox(height: 3,),
              Center(child: Text('${widget.text2}',style:const TextStyle(color: Colors.white,fontSize: 12),)),
            ],
          ),
        ),
      ),
    );
  }
}
