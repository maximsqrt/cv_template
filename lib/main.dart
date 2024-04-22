import 'package:cv_template/app.dart';
import 'package:cv_template/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Highlighter.initialize(['dart']);
  // Load the default light theme and create a highlighter.
  final theme = await HighlighterTheme.loadDarkTheme();

  runApp(App(theme: theme));
}
