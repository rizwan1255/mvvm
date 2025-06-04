import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{
  static toastMessage(String message){
    Fluttertoast.showToast(msg: message);
  }

  static void flushBarErrorMessage(String message, BuildContext context){
    showFlushbar(context: context,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          padding: EdgeInsets.all(15),
          flushbarPosition: FlushbarPosition.TOP,
          borderRadius: BorderRadius.circular(20),
          message: message,
          duration: Duration(seconds: 3),
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
        )..show(context)
    );
  }

  static snakeBar(String mesaage, BuildContext context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mesaage),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.red,
      )
    );
  }

}