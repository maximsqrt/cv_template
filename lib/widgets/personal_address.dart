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
            width: 20,
            height: 60,
            color: Colors.amber.shade400,
          ),
        ),
        const SizedBox(width: 12),
        Flexible(
          flex: 10,
          child: Column(children: [
            Row(
              children: [
                const Icon(Icons.smartphone),
                Text(personalData.phone),
                const Icon(Icons.mail),
                Text(personalData.email)
              ],
            ),
            Row(
              children: [
                const Icon(Icons.house),
                Text(personalData.address.toString())
              ],
            ),
          ]),
        ),
        const SizedBox(width: 12),
        Flexible(
          flex: 1,
          child: Container(
            width: 20,
            height: 60,
            color: Colors.amber.shade400,
          ),
        ),
      ],
    );
  }
}
