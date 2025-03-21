import 'package:flutter/material.dart';

import '../core/theme/strings.dart';
import '../core/theme/text_styles.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.notFound)),
      body: Center(
        child: Text(
          AppStrings.oops,
          style: AppTextStyles.errorStyle,
        ),
      ),
    );
  }
}