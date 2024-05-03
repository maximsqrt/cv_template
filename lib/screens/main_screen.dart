import 'package:auto_size_text/auto_size_text.dart';
import 'package:cv_template/config/config.dart';
import 'package:cv_template/domain/education_entry.dart';
import 'package:cv_template/screens/data_law_screen.dart';
import 'package:cv_template/screens/impressum_screen.dart';

import 'package:cv_template/widgets/person_edu_work.dart';
import 'package:cv_template/widgets/person_quote_contact.dart';
import 'package:cv_template/widgets/person_skills_lang.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:screenshot/screenshot.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key, required this.theme});

  static const routeName = '/MainScreen';
  final HighlighterTheme theme;

  final screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: screenshotController,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(70.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: PersonalImageAndName()),
                    SizedBox(width: 50),
                    Expanded(child: PersonQuoteContact()),
                  ],
                ),
              ),
              SizedBox(height: 200),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.all(70),
                          child: PersonSkillsLang())),
                  SizedBox(
                    width: 100,
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(24)),
                          color: Color(0xffe4e5f4),
                        ),
                        child: Padding(
                            padding: EdgeInsets.all(70.0),
                            child: PersonEducationWork())),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PersonalImageAndName extends StatelessWidget {
  const PersonalImageAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 122,
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          child: CircleAvatar(
            radius: 120,
            backgroundColor: Theme.of(context).colorScheme.tertiary,
            backgroundImage: AssetImage('assets/images/profile_picture.jpeg'),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SelectionArea(
              child: Text(
                selectionColor: Theme.of(context).colorScheme.secondary,
                personalData.firstName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SelectionArea(
              child: Text(
                selectionColor: Theme.of(context).colorScheme.secondary,
                personalData.lastName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 15),
            SelectionArea(
              child: Text(
                selectionColor: Theme.of(context).colorScheme.secondary,
                "Mobile App Developer",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
