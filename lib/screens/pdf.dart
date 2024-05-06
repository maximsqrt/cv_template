import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyPDFViewer extends StatelessWidget {


@override
Widget build(BuildContext context) {
  return Scaffold(
      body: SfPdfViewer.asset(
              'assets/AlertNuke_App.pdf'));
}}