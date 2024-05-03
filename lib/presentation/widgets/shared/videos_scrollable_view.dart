import 'package:flutter/material.dart';
import 'package:flutter_videos_verticales/domain/entities/video_post.dart';
import 'package:flutter_videos_verticales/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  // Lista de videos
  final List<VideoPost> videos;
  // Videos required
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost),
            ),
          ],
        );
      },
    );
  }
}
