import 'package:flutter/material.dart';

sealed class BottomSheet{
  static void bottom(BuildContext context, String message){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
         return SizedBox();
        });
  }
}