
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MessageScreen {
  void message ( String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blueGrey,
        textColor: Colors.black,
        fontSize: 14.0
    );
  }
}