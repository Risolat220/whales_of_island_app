import 'package:flutter/material.dart';
import '../core/theme/dimens.dart';
import '../core/theme/icons.dart';
import '../core/theme/strings.dart';
import '../core/theme/text_styles.dart';

class SafetyInstructionsScreen extends StatelessWidget {
  const SafetyInstructionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppDimens.p30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppStrings.safety,
                    style: AppTextStyles.safetyStyle,
                  ),
                  Spacer(),
                  _goBack(context),
                ],
              ),
              Text(
                AppStrings.instruct,
                style: AppTextStyles.safetyStyle,
              ),
              AppDimens.sizedH20,
              Text(AppStrings.safetyText)
            ],
          ),
        ),
      ),
    );
  }

  IconButton _goBack(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: AppIcons.share
    );
  }
}
