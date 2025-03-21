import 'package:flutter/material.dart';
import '../core/theme/colors.dart';
import '../core/theme/dimens.dart';
import '../core/theme/icons.dart';
import '../core/theme/text_styles.dart';
import '../models/model.dart';
import '../services/app_service.dart';
import 'package:just_audio/just_audio.dart';

class Detail extends StatefulWidget {
  final Model whale;
  const Detail({required this.whale, super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  AppService appService = AppService();
  bool isPressed = true;

  final AudioPlayer _audioPlayer = AudioPlayer();

  void _playSound()async{
    try{
      await _audioPlayer.setAsset("assets/sounds/whale_sound.mp3");
      _audioPlayer.play();
    }catch(e){
      print("Error: $e");
    }
  }

  void _pauseSound(){
    _audioPlayer.pause();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Model item = widget.whale;
    return Scaffold(
        body: Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0, -1),
                child: Container(
                  width: double.infinity,
                  height: AppDimens.d300,
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                      image: DecorationImage(fit: BoxFit.cover, image: AssetImage(item.image))),
                  child: Padding(
                    padding: AppDimens.p40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: backButton(context),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: AppDimens.d70,
                            height: AppDimens.d30,
                            color: Colors.blueAccent,
                            child: Center(
                              child: Text(
                                item.hours,
                                style: TextStyle(color: AppColors.white),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child:
                          Text(item.name, style: AppTextStyles.itemNameStyle),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            item.subName,
                            style: AppTextStyles.subNameStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 1),
                child: Container(
                  width: double.infinity,
                  height: AppDimens.d500,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.vertical(top: AppDimens.r30),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: AppDimens.p30,
                      child: Column(children: [
                        Container(
                          width: double.infinity,
                          height: AppDimens.d50,
                          decoration: BoxDecoration(
                            borderRadius: AppDimens.r20,
                            color: AppColors.blueShade,
                          ),
                          child: Padding(
                            padding: AppDimens.edgeAll10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AppIcons.length,
                                AppDimens.sizedW5,
                                Text(item.length),
                                AppDimens.sizedW20,
                                AppIcons.weight,
                                AppDimens.sizedW5,
                                Text(item.weight),
                                AppDimens.sizedW20,
                                AppIcons.speed,
                                AppDimens.sizedW5,
                                Text(item.worldwide)
                              ],
                            ),
                          ),
                        ),
                        AppDimens.sizedH30,
                        Text(item.text),
                        AppDimens.sizedH20,
                        Stack(
                          children: [
                            Container(
                              color: AppColors.grey,
                              width: double.infinity,
                              height: 2,
                            ),
                            Container(
                              color: AppColors.mainColor,
                              width: AppDimens.d150,
                              height: 2,
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "2.12",
                              style: TextStyle(color: AppColors.grey),
                            ),
                            Spacer(),
                            Text(
                              "4.42",
                              style: TextStyle(color: AppColors.grey),
                            )
                          ],
                        ),
                        AppDimens.sizedH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed: () {}, icon: AppIcons.toLeft),
                            AppDimens.sizedW30,
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPressed = !isPressed;
                                    if(!isPressed){
                                      _playSound();
                                    }
                                    else{
                                      _pauseSound();
                                    }
                                  });
                                },
                                icon: isPressed ? AppIcons.play : AppIcons.pause),
                            AppDimens.sizedW30,
                            IconButton(onPressed: () {}, icon: AppIcons.toRight)
                          ],
                        )
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  IconButton backButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.play_arrow_outlined,
        color: AppColors.white,
      ),
    );
  }
}
