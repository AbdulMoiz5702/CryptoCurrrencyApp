import 'package:flutter/material.dart';


class AuthUi extends StatefulWidget {
  AuthUi({required this.icon,required this.text,this.type ,required this.eye,  required this.hide ,this.change,this.controller});

  IconData icon ;
  String text;
  TextInputType ? type ;
  IconData ? eye ;
  bool hide  ;
  final VoidCallback ? change ;
  TextEditingController ? controller ;

  @override
  State<AuthUi> createState() => _AuthUiState();
}

class _AuthUiState extends State<AuthUi> {

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff08B8E0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: 45,
        width: MediaQuery.of(context).size.width * 0.9,
        color: Colors.transparent,
        child: TextFormField(
          style: TextStyle(fontWeight: FontWeight.w700),
          controller: widget.controller,
          obscuringCharacter: '*',
          obscureText: widget.hide,
          keyboardType: widget.type,
          decoration: InputDecoration(
           suffixIcon: IconButton(
             onPressed: widget.change,
             icon: Icon(widget.eye),
           ),
            border: InputBorder.none,
            prefixIcon:Icon(widget.icon,size:25,color: Colors.white),
            hintText: widget.text,
            hintStyle:const TextStyle(color: Colors.white70),
          ),
        ),
      ),
    );
  }
}