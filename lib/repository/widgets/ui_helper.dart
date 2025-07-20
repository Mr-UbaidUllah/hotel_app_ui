

import 'dart:ui';

import 'package:flutter/cupertino.dart';

class UiHelper {


  static customText({
    required String text,
    required Color color,
    required double fontSize,
    required FontWeight fontWeight
}) {
    return Text(
      text, style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,

    ),
    );
  }

  static customImage({required String img}) {
    return Image.asset("assets/images/$img");
  }
  
}