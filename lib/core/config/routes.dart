import 'package:flutter/material.dart';
import 'package:whales_of_island_app/screen/error.dart';
import '../../screen/home.dart';
import '../../screen/instructions.dart';


sealed class AppRoutes {
  static const home = "/";
  static const safety = "";

  static Map<String, Widget Function(BuildContext)> routes =
  <String, WidgetBuilder>{
    AppRoutes.home: (context) => const HomeScreen(),
    AppRoutes.safety: (context)=> const SafetyInstructionsScreen()
  };

  static Route<dynamic>? onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => ErrorScreen(),
    );
  }
}
