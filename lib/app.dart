import 'package:cv_template/config/theme.dart';
import 'package:cv_template/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

class App extends StatelessWidget {
  final HighlighterTheme theme;
  const App({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      home: MainScreen(theme: theme),
    );
  }
}
