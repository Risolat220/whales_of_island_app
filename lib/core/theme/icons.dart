import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

sealed class AppIcons{

  /// Home Screen
  static Icon share = Icon(Icons.ios_share_sharp, color: AppColors.grey);
  static Icon dashboard = Icon(Icons.dashboard);
  static Icon help = Icon(Icons.help_outline_sharp);
  static Icon person = Icon(Icons.person_2_outlined);

  /// Detail Screen
  static Icon length = Icon(Icons.height, color: AppColors.mainColor);
  static Icon weight = Icon(Icons.shopping_basket_outlined, color: AppColors.mainColor);
  static Icon speed = Icon(Icons.speed_outlined, color: AppColors.mainColor);
  static Icon toLeft = Icon(Icons.fast_rewind, color: AppColors.grey, size: AppDimens.d40);
  static Icon toRight = Icon(Icons.fast_forward, color: AppColors.grey, size: AppDimens.d40);
  static Icon play = Icon(Icons.play_circle_outlined, color: AppColors.mainColor, size: AppDimens.d70);
  static Icon pause = Icon(Icons.pause_circle_outlined, color: AppColors.mainColor, size: AppDimens.d70);



}