import 'package:flutter/material.dart';
import '../../screen/home.dart';
import '../../screen/instructions.dart';
import '../../screen/detail.dart';

sealed class AppRoutes{
  static final home = "/";
  static final instructions = "instructions";
  static final  detail = "detail";

  static Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
    AppRoutes.home: (context) => HomeScreen(),
    AppRoutes.instructions: (context) => SafetyInstructionsScreen(),
    AppRoutes.detail: (context) => GuideDetailScreen(),
};

}