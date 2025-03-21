import 'package:flutter/material.dart';

sealed class AppDimens{
  static const d500 = 500.0;
  static const d300 = 300.0;
  static const d200 = 200.0;
  static const d150 = 150.0;
  static const d70 = 70.0;
  static const d50 = 50.0;
  static const d40 = 40.0;
  static const d30 = 30.0;
  static const d20 = 20.0;
  static const d16 = 16.0;
  static const d8 = 8.0;



  ///Border Radiuses
  static  BorderRadius borderRadius12 = BorderRadius.circular(12);
  static  const borderRadius12V = BorderRadius.vertical(top: Radius.circular(12));
  static Radius r30 = Radius.circular(30);
  static BorderRadius r20 = BorderRadius.circular(20);

  ///Sized Boxes
  static SizedBox sizedH5 = SizedBox(height: 5);
  static SizedBox sizedH20 = SizedBox(height: 20);
  static SizedBox sizedH30 = SizedBox(height: 30);
  static SizedBox sizedW5 = SizedBox(width: 5);
  static SizedBox sizedW20 = SizedBox(width: 20);
  static SizedBox sizedW30 = SizedBox(width: 30);

  static EdgeInsets p40 = EdgeInsets.all(40.0);
  static EdgeInsets p30 = EdgeInsets.all(30.0);
  static const edgeAll8 = EdgeInsets.all(8.0);
  static const edgeAll10 = EdgeInsets.all(10.0);
  static const edgeAll16 = EdgeInsets.all(16.0);
  static const edgeSym8 =  EdgeInsets.symmetric(vertical: 8.0);
 static const edgeSym16 = EdgeInsets.symmetric(horizontal: 16.0);
}