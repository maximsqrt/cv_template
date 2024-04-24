import 'package:cv_template/config/config.dart';
import 'package:flutter/material.dart';

class DataLawScreen extends StatelessWidget {
  const DataLawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.chevron_left,
          ),
        ),
        title: Text(
          "Datenschutzerklärung",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primaryContainer,
            fontSize: Theme.of(context).textTheme.headlineLarge!.fontSize,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verantwortlicher",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineMedium!.fontSize,
              ),
            ),
            Text(
              "${personalData.firstName} ${personalData.lastName}",
            ),
            Text(
              "Art der verarbeiteten Daten",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
              ),
            ),
            const Text(
                "- Bestandsdaten  (z.B., Namen, Adressen) \n- Kontaktdaten (z.B., E-Mail, Telefonnummern) \n- Inhaltsdaten (z.B., Texteingaben, Fotografien, Videos)"),
            Text(
              "Art der verarbeiteten Daten",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
              ),
            ),
            const Text(
                "- Zurverfügungstellung des Onlineangebotes, seiner Funktionen und Inhalte \n- Beantwortung von Kontaktanfragen und Kommunikation mit Nutzern \n- Sicherheitsmaßnahmen"),
            Text(
              "Verwendete Begrifflichkeiten",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
              ),
            ),
            const Text(
                "Personenbezogene Daten sind alle Informationen, die sich auf eine identifizierte oder identifizierbare natürliche Person beziehen"),
            Text(
              "Maßgebliche Rechtsgrundlagen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
              ),
            ),
            const Text(
                "Nach Maßgabe des Art. 13 DSGVO teilen wir Ihnen die Rechtsgrundlagen unserer Datenverarbeitungen mit."),
            Text(
              "Zusammenarbeit mit Auftragverarbeitern und Dritten",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
              ),
            ),
            const Text(
                "Sofern wir im Rahmen unserer Verarbeitung Daten gegenüber anderen Personen und Unternehmen offenbaren, sie an diese übermitteln oder ihnen sonst Zugriff auf die Daten gewähren, erfolgt dies nur auf Grundlage einer gesetzlichen Erlaubnis."),
            Text(
              "Rechte der betroffenen Personen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
              ),
            ),
            const Text(
                "Sie haben das Recht, eine Bestätigung darüber zu verlangen, ob betreffende Daten verarbeitet werden und auf Auskunft über diese Daten sowie auf weitere Informationen und Kopie der Daten entsprechend Art. 15 DSGVO."),
            Text(
              "Widerrufsrecht",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
              ),
            ),
            const Text(
                "Sie haben das Recht, erteilte Einwilligungen gem. Art. 7 Abs. 3 DSGVO mit Wirkung für die Zukunft zu widerrufen."),
            Text(
              "Widerspruchsrecht",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
              ),
            ),
            const Text(
                "Sie können der künftigen Verarbeitung der Sie betreffenden Daten nach Maßgabe des Art. 21 DSGVO jederzeit widersprechen."),
          ],
        ),
      ),
    );
  }
}
