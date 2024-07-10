
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toasts{

  static void sucess(message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT, // Toast duration (Toast.LENGTH_SHORT or Toast.LENGTH_LONG)
      gravity: ToastGravity.BOTTOM, // Toast position (TOP, CENTER, or BOTTOM)
      backgroundColor: Colors.green,
      // Time in seconds for iOS and web
      timeInSecForIosWeb: 1,
      // Text color
      fontSize: 16.0, // Font size
    );
  }

  static void error(message){
    Fluttertoast.showToast(
      msg: (message),
      toastLength: Toast.LENGTH_LONG, // Toast duration (Toast.LENGTH_SHORT or Toast.LENGTH_LONG)
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,// Toast position (TOP, CENTER, or BOTTOM)
      timeInSecForIosWeb: 3,

      // Time in seconds for iOS and web
      // Text color
      fontSize: 16.0, // Font size
    );
  }

  void info(message){
    Fluttertoast.showToast(
      msg: (message),
      toastLength: Toast.LENGTH_LONG, // Toast duration (Toast.LENGTH_SHORT or Toast.LENGTH_LONG)
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.blueAccent,// Toast position (TOP, CENTER, or BOTTOM)
      timeInSecForIosWeb: 5,

      // Time in seconds for iOS and web
      // Text color
      fontSize: 16.0, // Font size
    );
  }
}