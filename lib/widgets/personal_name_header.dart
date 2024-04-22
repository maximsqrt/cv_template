import 'package:cv_template/config/config.dart';
import 'package:flutter/material.dart';

class PersonalNameHeader extends StatelessWidget {
  const PersonalNameHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Text(
        selectionColor: Theme.of(context).colorScheme.secondary,
        "${personalData.firstName} ${personalData.lastName}",
        style: const TextStyle(
          fontSize: 32,
        ),
      ),
    );
  }
}
