import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle textStyle_34Black = const TextStyle(
    fontFamily: 'Metropolis',
    fontWeight: FontWeight.bold,
    fontSize: 34,
    color: Color(0xFF222222),
  );

  static TextStyle textStyle_34White = const TextStyle(
    fontFamily: 'Metropolis',
    fontWeight: FontWeight.bold,
    fontSize: 34,
    color: Color(0xFFFFFFFF),
  );

  static TextStyle textStyle_11Black = const TextStyle(
    fontFamily: 'Metropolis',
    fontWeight: FontWeight.normal,
    fontSize: 11,
    color: Color(0xFF222222),
  );

  static TextStyle textStyle_11Gray = const TextStyle(
    fontFamily: 'Metropolis',
    fontWeight: FontWeight.normal,
    fontSize: 11,
    color: Color(0xFF9B9B9B),
  );

  static TextStyle textStyle_16 = const TextStyle(
    fontFamily: 'Metropolis',
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Color(0xFF222222),
  );

//number styles.
  static TextStyle numberStyle_11 = const TextStyle(
    fontFamily: 'Metropolis',
    fontWeight: FontWeight.w600,

    /// Semi-bold.
    fontSize: 11,
    color: Color(0xFFFFFFFF),
  );

  static TextStyle numberStyle_10 = const TextStyle(
    fontFamily: 'Metropolis',
    fontWeight: FontWeight.normal,
    fontSize: 10,
    color: Color(0xFF9B9B9B),
  );

  static TextStyle numberStyle_14 = const TextStyle(
    fontFamily: 'Metropolis',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Color(0xFFDB3022),
  );
}
