import 'package:flutter/material.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Row(
        children: [
          Icon(Icons.person),
          SizedBox(width: 32),
          Text(
            "Profile",
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
      Text(
          "This is the Text for the Profile. It tell the main points about you, where you come from, where you come from, what you want and so on :)")
    ]);
  }
}
