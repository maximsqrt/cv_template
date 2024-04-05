import 'package:cv_template/config/config.dart';
import 'package:cv_template/widgets/person_timeline.dart';
import 'package:cv_template/widgets/personal_data_view.dart';
import 'package:flutter/material.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.theme});

  static const routeName = '/MainScreen';
  final HighlighterTheme theme;

  @override
  Widget build(BuildContext context) {
    final highlighter = Highlighter(
      language: 'dart',
      theme: theme,
    );
    final highlightedCode = highlighter.highlight(personalData.toString());

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.grey[600],
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 48),
                        Center(
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage(
                                'assets/images/profile_picture.jpeg'),
                          ),
                        ),
                        SizedBox(height: 32),
                        PersonTimeLine()
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PersonalDataCodeView(highlightedCode: highlightedCode),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
