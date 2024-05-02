import 'package:flutter/material.dart';
import 'package:flutter_videos_verticales/presentation/providers_logic/discover_providers.dart';
import 'package:flutter_videos_verticales/presentation/widgets/shared/videos_scrollable_view.dart';
import 'package:provider/provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(child: CircularProgressIndicator(strokeAlign: 2,))
          : VideoScrollableView(videos: discoverProvider.videoslist),
    );
  }
}
