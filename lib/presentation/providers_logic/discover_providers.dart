import 'package:flutter/material.dart';
import 'package:flutter_videos_verticales/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videoslist = [];

  Future<void> loadNextPage() async {
    notifyListeners();
  }
}
