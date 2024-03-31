import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {

  static Color black = fromHex('#000000');

  static Color white = fromHex('#ffffff');

  static Color primary = fromHex('#98272B');

  static Color color_f3f1e9 = fromHex('#ffffffcc');

  static Color color_e6e6e6 = fromHex('#e6e6e6');

  static Color color_9c9ca4 = fromHex('#9c9ca4');

  static Color color_b2c0ff = fromHex('#b2c0ff');

  static Color color_AAB0B4 = fromHex('#AAB0B4');

  static Color color_E6E8EB = fromHex('#E6E8EB');

  static Color color_F4F5F9 = fromHex('#F4F5F9');

  static Color color_616264 = fromHex('#616264');

  static Color color_F5F5F7 = fromHex('#F5F5F7');

  static Color color_EBEBEB = fromHex('#EBEBEB');

  static Color color_222020 = fromHex('#222020');

  static Color color_F6F6F6 = fromHex('#F6F6F6');

  static Color color_0057FF = fromHex('#0057FF');

  static Color color_cccccc = fromHex('#cccccc');

  static Color color_FDA946 = fromHex('#FDA946');

  static Color color_6FC32D = fromHex('#6FC32D');

  static Color color_FA1C1C = fromHex('#FA1C1C');

  static Color color_98272B = fromHex('#98272B');

  static Color color_D0D3D8 = fromHex('#D0D3D8');

  static Color color_F9F9F9 = fromHex('#F9F9F9');

  static Color color_081013 = fromHex('#081013');

  static Color color_56AE59 = fromHex('#56AE59');

  static Color color_DA7537 = fromHex('#DA7537');

  static Color color_C0C0C0 = fromHex('#C0C0C0');

  static Color color_FF98272B = fromHex('#FF98272B');

  static Color color_8c8c8c = fromHex('#8c8c8c');
  static Color color_0090FF = fromHex('#0090FF');

  static Color color_D01818 = fromHex('#D01818');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static List<Color> listHouseUnitColor = [
    ColorConstant.color_DA7537, //orange
    ColorConstant.color_C0C0C0, //grey
    ColorConstant.color_D01818, //pink
    ColorConstant.color_56AE59, // green
    ColorConstant.color_0090FF, //blue
  ];

  static getHouseUnitColor(String? status){
    switch (status) {
      case 'Open_Sale': return listHouseUnitColor[0];
      case 'Not_Open_Sale': return listHouseUnitColor[1];
      case 'Ordered': return listHouseUnitColor[2];
      case 'Deposit': return listHouseUnitColor[3];
      case 'Sold': return listHouseUnitColor[4];
    }
    return listHouseUnitColor[0];
  }

}
