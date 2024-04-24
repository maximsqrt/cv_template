import 'package:cv_template/config/config.dart';
import 'package:cv_template/domain/personal_data.dart';
import 'package:flutter/material.dart';

class ImpressumScreen extends StatelessWidget {
  const ImpressumScreen({super.key});

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
          "Impressum",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primaryContainer,
            fontSize: Theme.of(context).textTheme.headlineLarge!.fontSize,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
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
              "Angaben gemäß §5 TMG",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "${personalData.firstName} ${personalData.lastName}",
            ),
            Text(
                "${personalData.address.street}, ${personalData.address.zip} ${personalData.address.city}"),
            Text(
              "Vertreten durch",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
              ),
            ),
            Text(
              "${personalData.firstName} ${personalData.lastName}",
            ),
            Text(
              "Kontakt",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
              ),
            ),
            Text("Telefon: ${personalData.phone}"),
            Text("Email: ${personalData.email}"),
            Text(
              "Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
              ),
            ),
            Text(
              "${personalData.firstName} ${personalData.lastName}",
            ),
            Text(
                "${personalData.address.street}, ${personalData.address.zip} ${personalData.address.city}"),
            Text(
              "Streitschlichtung",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
              ),
            ),
            const Text(
                "Die Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit: https://ec.europa.eu/consumers/odr Unsere E-Mail-Adresse finden Sie oben im Impressum.")
          ],
        ),
      ),
    );
  }
}
