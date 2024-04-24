import 'package:cv_template/screens/data_law_screen.dart';
import 'package:cv_template/screens/impressum_screen.dart';
import 'package:cv_template/widgets/main_timeline.dart';
import 'package:cv_template/widgets/person_timeline.dart';
import 'package:cv_template/widgets/personal_address.dart';

import 'package:cv_template/widgets/personal_name_header.dart';

import 'package:cv_template/widgets/profile_description.dart';

import 'package:flutter/material.dart';
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
              padding: const EdgeInsets.all(0.0),
              child: LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth > 700) {
                  return const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 2,
                        child: PersonalSkillsSidebar(),
                      ),
                      Flexible(
                        flex: 6,
                        child: PersonalInformationMainScreen(
                          isConstrained: false,
                        ),
                      ),
                    ],
                  );
                } else {
                  return const Column(
                    children: [
                      SizedBox(height: 16),
                      PersonalNameHeader(),
                      PersonalSkillsSidebar(),
                      PersonalInformationMainScreen(
                        isConstrained: true,
                      ),
                    ],
                  );
                }
              })),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _offerCVasPdf();
          },
          child: const Icon(Icons.picture_as_pdf_sharp),
        ),
      ),
    );
  }

// Roughly taken from https://stackoverflow.com/a/74265509
// WIP :)
  void _offerCVasPdf() async {
    final screenshot = await screenshotController.capture();

    pw.Document pdfDocument = pw.Document();
    pdfDocument.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Expanded(
            child: pw.Image(
              pw.MemoryImage(screenshot!),
              fit: pw.BoxFit.contain,
            ),
          );
        },
      ),
    );
    final pdfData = await pdfDocument.save();

    // Create a blob from the PDF bytes
    final blob = html.Blob([pdfData], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);
    html.AnchorElement(href: url)
      ..setAttribute("download", "cv_template.pdf")
      ..click();
    html.Url.revokeObjectUrl(url);
  }
}

class PersonalInformationMainScreen extends StatelessWidget {
  const PersonalInformationMainScreen({
    super.key,
    required this.isConstrained,
  });

  final bool isConstrained;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isConstrained) ...[
            const SizedBox(height: 16),
            const PersonalNameHeader(),
          ],
          const SizedBox(height: 16),
          const PersonalAddress(),
          const SizedBox(height: 32),
          const ProfileDescription(),
          const SizedBox(height: 32),
          const MainTimeLine(),
          const SizedBox(height: 32),
          const Footer(),
        ],
      ),
    );
  }
}

class PersonalSkillsSidebar extends StatelessWidget {
  const PersonalSkillsSidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage:
                      AssetImage('assets/images/profile_picture.jpeg'),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
          SizedBox(height: 32),
          PersonalTimeLine()
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ImpressumScreen())),
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
      ),
    );
  }
}
