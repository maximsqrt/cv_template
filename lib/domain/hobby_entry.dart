import 'package:flutter/material.dart';

class HobbyEntry{

    final String name;
    final String imagePath;
  
  const HobbyEntry(
      {required this.name,
    required this.imagePath
    });
   
   Widget getImageWidget() {
    return Image.asset(imagePath);
   }
  
}