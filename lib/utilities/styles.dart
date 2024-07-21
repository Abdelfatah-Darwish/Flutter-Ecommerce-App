import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle headline = const TextStyle(
    fontFamily: 'Metropolis',
    fontWeight: FontWeight.w700,
    fontSize: 34,
    height: 1, // This is equivalent to 34 px line height
    color: Color(0xFF222222),
  );
}
