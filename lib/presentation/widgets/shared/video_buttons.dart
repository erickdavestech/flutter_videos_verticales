import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_videos_verticales/config/helpers/human_formats.dart';
import 'package:flutter_videos_verticales/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _MyCustomWidget(
          value: video.likes,
          iconColor: Colors.purple,
          iconData: Icons.favorite,
        ),
        _MyCustomWidget(
          value: video.views,
          iconData: Icons.remove_red_eye_outlined,
        ),
        // New Button sin texto, like play button
        // Using anime_do  animate_do: ^3.3.4 to animate the play button
        SpinPerfect(
            infinite: true,
            duration: const Duration(seconds: 5),
            child: const _MyCustomWidget(
              value: 0,
              iconData: Icons.play_circle_outlined,
            ))
      ],
    );
  }
}

// Custom Widget ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
class _MyCustomWidget extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _MyCustomWidget(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              color: color,
            )),
        //   Text('$value'),
        // Numeros Legibles utilizando paquete intl intl 0.19.0 flutter pub add intl
        // Not showing value on screen
        if (value > 0) Text(HumanFormats.humanReadbleNumber(value.toDouble())),
      ],
    );
  }
}
//Custom Widget ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
