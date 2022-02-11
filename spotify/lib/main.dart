import 'dart:io';

import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:spotify/data/data.dart';
import 'package:spotify/models/current_track_model.dart';
import 'package:spotify/widgets/widgets.dart';
import 'package:provider/provider.dart';

import 'screens/playlist_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && (Platform.isMacOS || Platform.isLinux || Platform.isWindows)) {
    await DesktopWindow.setMinWindowSize(const Size(600, 800));
  }
  runApp(ChangeNotifierProvider(
      create: (context) => CurrentTrackModel(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    const myColor = Colors.green;
    return MaterialApp(
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(secondary: myColor),
          backgroundColor: const Color(0xFF0F0F0F)),
      title: 'Spotify',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),
        backgroundColor: Color(0xfFFFFFf),
        primaryColor: Colors.black,
        iconTheme: const IconThemeData().copyWith(color: Colors.white),
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline2: const TextStyle(
              color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold),
          headline4: const TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              letterSpacing: 2.0),
          bodyText1: TextStyle(
              color: Colors.grey[300],
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0),
          bodyText2: TextStyle(color: Colors.grey[300], letterSpacing: 1.0),
        ),
      ),
      home: Shell(),
    );
  }
}

class Shell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                if (MediaQuery.of(context).size.width > 800) SideMenu(),
                const Expanded(
                  child: PlaylistScreen(
                    playlist: lofihiphopPlaylist,
                  ),
                ),
              ],
            ),
          ),
          CurrentTrack(),
        ],
      ),
    );
  }
}
