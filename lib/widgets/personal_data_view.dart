import 'package:flutter/material.dart';

class PersonalDataCodeView extends StatelessWidget {
  const PersonalDataCodeView({
    super.key,
    required this.highlightedCode,
  });

  final TextSpan highlightedCode;

  @override
  Widget build(BuildContext context) {
    return Text.rich(highlightedCode, style: const TextStyle(fontSize: 20));
  }
}
