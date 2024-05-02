import 'package:flutter/material.dart';
import 'package:flutter_videos_verticales/domain/entities/video_post.dart';
import 'package:flutter_videos_verticales/infrastructure/models/local_video_post.dart';
import 'package:flutter_videos_verticales/shared/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videoslist = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideosLoad = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    videoslist.addAll(newVideosLoad);
    initialLoading = false;
    notifyListeners();
  }
}
