import 'package:flutter/material.dart';



class UserInfoTextField extends StatefulWidget {
  UserInfoTextField({required this.controller,required this.hintText});

  TextEditingController controller ;
  String hintText ;

  @override
  State<UserInfoTextField> createState() => _UserInfoTextFieldState();
}

class _UserInfoTextFieldState extends State<UserInfoTextField> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color:const Color(0xff08B8E0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: 45,
        width: MediaQuery.of(context).size.width * 0.9,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextFormField(
            style:const TextStyle(fontWeight: FontWeight.w700),
            controller: widget.controller,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              hintStyle:const TextStyle(color: Colors.white70),
            ),
          ),
        ),
      ),
    );
  }
}
