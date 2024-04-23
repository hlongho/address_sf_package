import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {

  static Color black = fromHex('#000000');

  static Color white = fromHex('#ffffff');

  static Color primary = fromHex('#98272B');

  static Color colorE6e6e6 = fromHex('#e6e6e6');

  static Color color_9c9ca4 = fromHex('#9c9ca4');

  static Color colorAAB0B4 = fromHex('#AAB0B4');

  static Color color_616264 = fromHex('#616264');

  static Color color_222020 = fromHex('#222020');

  static Color color_0057FF = fromHex('#0057FF');

  static Color color_6FC32D = fromHex('#6FC32D');

  static Color color_FA1C1C = fromHex('#FA1C1C');

  static Color color_98272B = fromHex('#98272B');

  static Color color_081013 = fromHex('#081013');

  static Color color_56AE59 = fromHex('#56AE59');

  static Color color_8c8c8c = fromHex('#8c8c8c');
  static Color color_0090FF = fromHex('#0090FF');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
