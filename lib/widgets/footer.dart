import 'package:cv_template/screens/data_law_screen.dart';
import 'package:cv_template/screens/impressum_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
