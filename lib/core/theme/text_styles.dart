import 'package:flutter/material.dart';
import 'colors.dart';
import 'dimens.dart';

sealed class AppTextStyles {

  static const TextStyle headline1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );


  static const TextStyle subtitle1 = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );


  static const TextStyle overlayText = TextStyle(
    fontSize: 16,
    color: Colors.white,
    backgroundColor: Colors.black26,
  );


  static const TextStyle overlayHeadline = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    backgroundColor: Colors.black26,
  );


  static TextStyle bodyText = TextStyle(
    fontSize: 14,
    color: AppColors.grey,
  );


  static const TextStyle accentText = TextStyle(
    fontSize: 14,
    color: AppColors.mainColor,
  );

  static TextStyle errorStyle = TextStyle(
      fontSize: AppDimens.d20,
      color: AppColors.red);
  static TextStyle guides = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 32);
  static TextStyle itemNameStyle = TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: AppColors.white);
  static TextStyle subNameStyle = TextStyle(
      fontSize: 16,
      color: Colors.grey);
  static TextStyle safetyStyle = TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.bold);
}