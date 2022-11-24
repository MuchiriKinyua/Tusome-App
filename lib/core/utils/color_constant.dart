import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color green300 = fromHex('#62db84');

  static Color gray700 = fromHex('#5d5d5d');

  static Color cyanA101 = fromHex('#6df2fa');

  static Color cyanA100 = fromHex('#70f3f3');

  static Color lightBlueA100 = fromHex('#66e7f8');

  static Color gray900 = fromHex('#1c1b1b');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color black9003f = fromHex('#3f000000');

  static Color greenA200 = fromHex('#61f392');

  static Color tealA200 = fromHex('#6bf1e9');

  static Color greenA201 = fromHex('#6ef3b3');

  static Color gray100 = fromHex('#f5f2f2');

  static Color green301 = fromHex('#62dc84');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
