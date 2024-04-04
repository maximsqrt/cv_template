import 'package:cv_template/app.dart';
import 'package:flutter/material.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Highlighter.initialize(['dart']);
  // Load the default light theme and create a highlighter.
  var theme = await HighlighterTheme.loadDarkTheme();
  runApp(App(theme: theme));
}
