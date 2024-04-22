import 'package:cv_template/config/config.dart';
import 'package:flutter/material.dart';

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Text(
        personalData.profileDescription,
        style: TextStyle(
          fontSize: Theme.of(context).textTheme.headlineMedium!.fontSize,
          fontWeight: FontWeight.w900,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
