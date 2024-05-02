import 'package:flutter/material.dart';
import 'package:flutter_videos_verticales/presentation/providers_logic/discover_providers.dart';
import 'package:provider/provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(child: CircularProgressIndicator())
          : const Placeholder(),
    );
  }
}
