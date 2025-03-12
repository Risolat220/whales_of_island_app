import 'package:flutter/material.dart';
import '../../core/theme/dimens.dart';
import '../theme/colors.dart';

class StatItem extends StatelessWidget {
  final String value;
  final IconData icon;

  const StatItem(this.value, this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: AppColors.mainColor),
        AppDimens.sized4,
        Text(
          value,
          style: const TextStyle(fontSize: 16, color: AppColors.mainColor),
        ),
      ],
    );
  }
}

class AudioPlayerWidget extends StatelessWidget {
  const AudioPlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDimens.edgeAll16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const IconButton(icon: Icon(Icons.replay_10), onPressed: null),
          AppDimens.sized20,
          const IconButton(
            icon: Icon(Icons.play_arrow, size: 40),
            onPressed: null,
          ),
          AppDimens.sized20,
          const IconButton(icon: Icon(Icons.forward_10), onPressed: null),
        ],
      ),
    );
  }
}