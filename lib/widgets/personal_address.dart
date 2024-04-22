import 'package:cv_template/config/config.dart';

import 'package:flutter/material.dart';

class PersonalAddress extends StatelessWidget {
  const PersonalAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 15,
          height: 90,
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        const SizedBox(width: 12),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.smartphone),
              const SizedBox(width: 10),
              SelectionArea(
                child: Text(
                  personalData.phone.toString(),
                  selectionColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.mail),
              const SizedBox(width: 10),
              SelectionArea(
                child: Text(
                  personalData.email.toString(),
                  selectionColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.house),
              const SizedBox(width: 10),
              SelectionArea(
                child: Text(
                  personalData.address.toString(),
                  selectionColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ]),
      ],
    );
  }
}
