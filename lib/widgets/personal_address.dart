import 'package:cv_template/config/config.dart';

import 'package:flutter/material.dart';

class PersonalAddress extends StatelessWidget {
  const PersonalAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: Container(
            width: 15,
            height: 90,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
        const SizedBox(width: 12),
        Flexible(
          flex: 10,
          child: Column(children: [
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.smartphone),
                const SizedBox(width: 10),
                Text(personalData.phone.toString()),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.mail),
                const SizedBox(width: 10),
                Text(personalData.email.toString()),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.house),
                const SizedBox(width: 10),
                Text(personalData.address.toString())
              ],
            ),
            const SizedBox(height: 10),
          ]),
        ),
        const SizedBox(width: 12),
        Flexible(
          flex: 1,
          child: Container(
            width: 15,
            height: 90,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
      ],
    );
  }
}
