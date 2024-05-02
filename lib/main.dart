// Using Provider as changeStates
import 'package:flutter/material.dart';
import 'package:flutter_videos_verticales/config/app_theme.dart';
import 'package:flutter_videos_verticales/presentation/providers_logic/discover_providers.dart';
import 'package:flutter_videos_verticales/presentation/screens/discover/discover_screens.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => DiscoverProvider()..loadNextPage())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        title: 'CLone Toktik App',
        home: const DiscoverScreen(),
      ),
    );
  }
}
