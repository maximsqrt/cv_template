import 'package:cv_template/config/config.dart';
import 'package:cv_template/widgets/person_timeline.dart';
import 'package:cv_template/widgets/personal_data_view.dart';
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
    final highlighter = Highlighter(
      language: 'dart',
      theme: theme,
    );
    final highlightedCode = highlighter.highlight(personalData.toString());

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _offerCVasPdf();
        },
        child: const Icon(Icons.picture_as_pdf_sharp),
      ),
      backgroundColor: Colors.grey[900],
      body: Screenshot(
        controller: screenshotController,
        child: SingleChildScrollView(
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
              //PdfImage.file(pdfDocument.document, bytes: screenshot),
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
