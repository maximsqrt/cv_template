import 'package:auto_size_text/auto_size_text.dart';
import 'package:cv_template/config/config.dart';
import 'package:cv_template/screens/data_law_screen.dart';
import 'package:cv_template/screens/impressum_screen.dart';
import 'package:cv_template/widgets/main_timeline.dart';
import 'package:cv_template/widgets/person_timeline.dart';
import 'package:cv_template/widgets/personal_address.dart';

import 'package:cv_template/widgets/personal_name_header.dart';

import 'package:cv_template/widgets/profile_description.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'package:screenshot/screenshot.dart';
import 'package:syntax_highlight/syntax_highlight.dart';
import 'package:universal_html/html.dart' as html;

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
          child: Padding(
            padding: const EdgeInsets.all(70.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [PersonalImageAndName(), PersonalQuoteAndContact()],
                ),
                SizedBox(height: 200),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 200),
                          PersonalSkillsAndLang(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        child: PersonalEducationWork(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.picture_as_pdf_sharp),
        ),
      ),
    );
  }
}

class PersonalEducationWork extends StatelessWidget {
  const PersonalEducationWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
            width: 280,
            padding: EdgeInsets.fromLTRB(28, 34, 28, 34),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.code,
                  size: 40,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                SizedBox(
                  width: 15,
                ),
                SelectionArea(
                  child: Text(
                    selectionColor: Theme.of(context).colorScheme.secondary,
                    "My Skills",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 600,
            child: ListView.builder(
              itemCount: skills.length,
              itemBuilder: ((context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/svg/flutter.svg"),
                        SizedBox(
                          width: 16,
                        ),
                        SelectionArea(
                          child: Text(
                            skills[index].name,
                            selectionColor:
                                Theme.of(context).colorScheme.secondary,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 33),
                    SliderTheme(
                      data: SliderThemeData(
                        overlayShape: SliderComponentShape.noThumb,
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 0),
                        trackHeight: 6,
                        activeTrackColor: Color(0xfff2f2fA),
                        inactiveTrackColor: Color.fromRGBO(114, 120, 208, 0.4),
                      ),
                      child: Slider(
                        value: skills[index].rating.toDouble(),
                        min: 0,
                        max: 5,
                        label: skills[index].rating.toString(),
                        onChanged: (double value) {},
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                );
              }),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
            width: 280,
            padding: EdgeInsets.fromLTRB(28, 34, 28, 34),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.chat_bubble_sharp,
                  size: 40,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                SizedBox(
                  width: 15,
                ),
                SelectionArea(
                  child: Text(
                    selectionColor: Theme.of(context).colorScheme.secondary,
                    "Languages",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 600,
            child: ListView.builder(
              itemCount: skills.length,
              itemBuilder: ((context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/svg/flutter.svg"),
                        SizedBox(
                          width: 16,
                        ),
                        SelectionArea(
                          child: Text(
                            skills[index].name,
                            selectionColor:
                                Theme.of(context).colorScheme.secondary,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 33),
                    SliderTheme(
                      data: SliderThemeData(
                        overlayShape: SliderComponentShape.noThumb,
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 0),
                        trackHeight: 6,
                        activeTrackColor: Color(0xfff2f2fA),
                        inactiveTrackColor: Color.fromRGBO(114, 120, 208, 0.4),
                      ),
                      child: Slider(
                        value: skills[index].rating.toDouble(),
                        min: 0,
                        max: 5,
                        label: skills[index].rating.toString(),
                        onChanged: (double value) {},
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}

class PersonalSkillsAndLang extends StatelessWidget {
  PersonalSkillsAndLang({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          width: 280,
          padding: EdgeInsets.fromLTRB(28, 34, 28, 34),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.code,
                size: 40,
                color: Theme.of(context).colorScheme.tertiary,
              ),
              SizedBox(
                width: 15,
              ),
              SelectionArea(
                child: Text(
                  selectionColor: Theme.of(context).colorScheme.secondary,
                  "My Skills",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          height: 600,
          child: ListView.builder(
            itemCount: skills.length,
            itemBuilder: ((context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/svg/flutter.svg"),
                      SizedBox(
                        width: 16,
                      ),
                      SelectionArea(
                        child: Text(
                          skills[index].name,
                          selectionColor:
                              Theme.of(context).colorScheme.secondary,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 33),
                  SliderTheme(
                    data: SliderThemeData(
                      overlayShape: SliderComponentShape.noThumb,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 0),
                      trackHeight: 6,
                      activeTrackColor: Color(0xfff2f2fA),
                      inactiveTrackColor: Color.fromRGBO(114, 120, 208, 0.4),
                    ),
                    child: Slider(
                      value: skills[index].rating.toDouble(),
                      min: 0,
                      max: 5,
                      label: skills[index].rating.toString(),
                      onChanged: (double value) {},
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              );
            }),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          width: 280,
          padding: EdgeInsets.fromLTRB(28, 34, 28, 34),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.chat_bubble_sharp,
                size: 40,
                color: Theme.of(context).colorScheme.tertiary,
              ),
              SizedBox(
                width: 15,
              ),
              SelectionArea(
                child: Text(
                  selectionColor: Theme.of(context).colorScheme.secondary,
                  "Languages",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          height: 600,
          child: ListView.builder(
            itemCount: skills.length,
            itemBuilder: ((context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/svg/flutter.svg"),
                      SizedBox(
                        width: 16,
                      ),
                      SelectionArea(
                        child: Text(
                          skills[index].name,
                          selectionColor:
                              Theme.of(context).colorScheme.secondary,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 33),
                  SliderTheme(
                    data: SliderThemeData(
                      overlayShape: SliderComponentShape.noThumb,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 0),
                      trackHeight: 6,
                      activeTrackColor: Color(0xfff2f2fA),
                      inactiveTrackColor: Color.fromRGBO(114, 120, 208, 0.4),
                    ),
                    child: Slider(
                      value: skills[index].rating.toDouble(),
                      min: 0,
                      max: 5,
                      label: skills[index].rating.toString(),
                      onChanged: (double value) {},
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              );
            }),
          ),
        ),
        Footer()
      ],
    );
  }
}

class PersonalQuoteAndContact extends StatelessWidget {
  const PersonalQuoteAndContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      width: 683,
      height: 244,
      padding: EdgeInsets.fromLTRB(28, 34, 28, 34),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SelectionArea(
            child: AutoSizeText(
              personalData.profileDescription,
              softWrap: true,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 12,
                    child: Icon(
                      Icons.phone,
                      size: 17,
                    ),
                    backgroundColor:
                        Theme.of(context).colorScheme.tertiaryContainer,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SelectionArea(
                    child: AutoSizeText(
                      personalData.phone,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 12,
                    child: Icon(
                      Icons.mail,
                      size: 17,
                    ),
                    backgroundColor:
                        Theme.of(context).colorScheme.tertiaryContainer,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SelectionArea(
                    child: AutoSizeText(
                      personalData.email,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 12,
                    child: Icon(
                      Icons.home,
                      size: 17,
                    ),
                    backgroundColor:
                        Theme.of(context).colorScheme.tertiaryContainer,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SelectionArea(
                    child: AutoSizeText(
                      "${personalData.address.city} ${personalData.address.street} ${personalData.address.zip}",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
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

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        TextButton(
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ImpressumScreen())),
          child: Text(
            style: TextStyle(
                color: Theme.of(context).colorScheme.primaryContainer,
                fontWeight: FontWeight.bold),
            "Impressum",
          ),
        ),
        TextButton(
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DataLawScreen())),
          child: Text(
            style: TextStyle(
                color: Theme.of(context).colorScheme.primaryContainer,
                fontWeight: FontWeight.bold),
            "Datenschutzerklärung",
          ),
        ),
      ],
    );
  }
}
