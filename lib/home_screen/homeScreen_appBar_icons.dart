import 'package:flutter/material.dart';



class AppBarIcons extends StatelessWidget {
  AppBarIcons({required this.icon,required this.color,this.onTap,this.builder});
  IconData icon ;
  Color color ;
  Function ? onTap ;
  Builder ? builder ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap,
        child: Icon(icon,color: color,size: 30,)) ;
  }
}
