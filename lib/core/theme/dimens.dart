import 'package:flutter/material.dart';

sealed class AppDimens{
  static const d200 = 200.0;
  static const d300 = 300.0;
  static const d16 = 16.0;
  static const d8 = 8.0;


  static  BorderRadius borderRadius12 = BorderRadius.circular(12);
  static  const borderRadius12V = BorderRadius.vertical(top: Radius.circular(12));
  static SizedBox sized4 = SizedBox(height: 4);
  static SizedBox sized8 = SizedBox(height: 8);
  static SizedBox sized16 = SizedBox(height: 16);
  static SizedBox sized20 = SizedBox(width: 20);
  static const edgeAll8 = EdgeInsets.all(8.0);
  static const edgeAll16 = EdgeInsets.all(16.0);
  static const edgeSym8 =  EdgeInsets.symmetric(vertical: 8.0);
 static const edgeSym16 = EdgeInsets.symmetric(horizontal: 16.0);
}