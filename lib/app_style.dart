import 'package:flutter/material.dart';

import 'color_constant.dart';

class AppStyle {
  // define fontFamily && fontWeight
  static TextStyle montserratRegular = TextStyle(
    color: ColorConstant.black,
    fontFamily: 'Montserrat',
    package: 'address_sf_package',
    fontWeight: FontWeight.w400,
  );

  static TextStyle montserratSemiBold = TextStyle(
    color: ColorConstant.black,
    fontFamily: 'Montserrat',
    package: 'address_sf_package',
    fontWeight: FontWeight.w600,
  );

  static TextStyle montserratBold = TextStyle(
    color: ColorConstant.black,
    fontFamily: 'Montserrat',
    package: 'address_sf_package',
    fontWeight: FontWeight.w700,
  );

  // define fontSize
  static TextStyle montserratRegular11 =
      montserratRegular.copyWith(fontSize: 11);
  static TextStyle montserratRegular12 =
      montserratRegular.copyWith(fontSize: 12);
  static TextStyle montserratRegular14 =
      montserratRegular.copyWith(fontSize: 14);
  static TextStyle montserratRegular16 =
      montserratRegular.copyWith(fontSize: 16);
  static TextStyle montserratRegular18 =
      montserratRegular.copyWith(fontSize: 18);

  static TextStyle montserratSemiBold12 =
      montserratSemiBold.copyWith(fontSize: 12);
  static TextStyle montserratSemiBold14 =
      montserratSemiBold.copyWith(fontSize: 14);
  static TextStyle montserratSemiBold16 =
      montserratSemiBold.copyWith(fontSize: 16);
  static TextStyle montserratSemiBold18 =
      montserratSemiBold.copyWith(fontSize: 18);

  static TextStyle montserratBold12 = montserratBold.copyWith(fontSize: 12);
  static TextStyle montserratBold14 = montserratBold.copyWith(fontSize: 14);
  static TextStyle montserratBold16 = montserratBold.copyWith(fontSize: 16);
  static TextStyle montserratBold18 = montserratBold.copyWith(fontSize: 18);

  // define color montserratRegular12
  static TextStyle montserratRegular11FFFFFF =
      montserratRegular11.copyWith(color: ColorConstant.white);
  static TextStyle montserratRegular11_222020 =
      montserratRegular11.copyWith(color: ColorConstant.color_222020);
  static TextStyle montserratRegular12FFFFFF =
      montserratRegular12.copyWith(color: ColorConstant.white);
  static TextStyle montserratRegular12_222020 =
      montserratRegular12.copyWith(color: ColorConstant.color_222020);
  static TextStyle montserratRegular12_616264 =
      montserratRegular12.copyWith(color: ColorConstant.color_616264);
  static TextStyle montserratRegular12FA1C1C =
      montserratRegular12.copyWith(color: ColorConstant.colorFA1C1C);
  static TextStyle montserratRegular12Primary =
      montserratRegular12.copyWith(color: ColorConstant.primary);
  static TextStyle montserratRegular12_081013 =
      montserratRegular12.copyWith(color: ColorConstant.color_081013);
  static TextStyle montserratRegular12_98272B =
      montserratRegular12.copyWith(color: ColorConstant.color_98272B);
  static TextStyle montserratRegular12_000000 =
      montserratRegular12.copyWith(color: ColorConstant.black);
  static TextStyle montserratRegular12AAB0B4 =
      montserratRegular12.copyWith(color: ColorConstant.colorAAB0B4);

  // define color montserratRegular14
  static TextStyle montserratRegular14FFFFFF =
      montserratRegular14.copyWith(color: ColorConstant.white);
  static TextStyle montserratRegular14_000000 =
      montserratRegular14.copyWith(color: ColorConstant.black);
  static TextStyle montserratRegular14Primary =
      montserratRegular14.copyWith(color: ColorConstant.primary);
  static TextStyle montserratRegular14_222020 =
      montserratRegular14.copyWith(color: ColorConstant.color_222020);
  static TextStyle montserratRegular14_616264 =
      montserratRegular14.copyWith(color: ColorConstant.color_616264);
  static TextStyle montserratRegular14_0057FF =
      montserratRegular14.copyWith(color: ColorConstant.color_0057FF);
  static TextStyle montserratRegular14AAB0B4 =
      montserratRegular14.copyWith(color: ColorConstant.colorAAB0B4);
  static TextStyle montserratRegular14_6FC32D =
      montserratRegular14.copyWith(color: ColorConstant.color_6FC32D);
  static TextStyle montserratRegular14_081013 =
      montserratRegular14.copyWith(color: ColorConstant.color_081013);

  // define color montserratRegular14Italic
  static TextStyle montserratRegular14ItalicFFFFFF = montserratRegular14
      .copyWith(color: ColorConstant.white, fontStyle: FontStyle.italic);
  static TextStyle montserratRegular14Italic_000000 = montserratRegular14
      .copyWith(color: ColorConstant.black, fontStyle: FontStyle.italic);
  static TextStyle montserratRegular14ItalicPrimary = montserratRegular14
      .copyWith(color: ColorConstant.primary, fontStyle: FontStyle.italic);
  static TextStyle montserratRegular14Italic_222020 = montserratRegular14
      .copyWith(color: ColorConstant.color_222020, fontStyle: FontStyle.italic);
  static TextStyle montserratRegular14Italic_616264 = montserratRegular14
      .copyWith(color: ColorConstant.color_616264, fontStyle: FontStyle.italic);

  // define color montserratRegular16
  static TextStyle montserratRegular16FFFFFF =
      montserratRegular16.copyWith(color: ColorConstant.white);
  static TextStyle montserratRegular16_000000 =
      montserratRegular16.copyWith(color: ColorConstant.black);
  static TextStyle montserratRegular16_222020 =
      montserratRegular16.copyWith(color: ColorConstant.color_222020);

  // define color montserratRegular18
  static TextStyle montserratRegular18FFFFFF =
      montserratRegular18.copyWith(color: ColorConstant.white);
  static TextStyle montserratRegular18_000000 =
      montserratRegular18.copyWith(color: ColorConstant.black);

  // define color montserratSemiBold12
  static TextStyle montserratSemiBold12FFFFFF =
      montserratSemiBold12.copyWith(color: ColorConstant.white);
  static TextStyle montserratSemiBold12_000000 =
      montserratSemiBold12.copyWith(color: ColorConstant.black);
  static TextStyle montserratSemiBold12Primary =
      montserratSemiBold12.copyWith(color: ColorConstant.primary);
  static TextStyle montserratSemiBold12_222020 =
      montserratSemiBold12.copyWith(color: ColorConstant.color_222020);

  // define color montserratSemiBold14
  static TextStyle montserratSemiBold14FFFFFF =
      montserratSemiBold14.copyWith(color: ColorConstant.white);
  static TextStyle montserratSemiBold14_000000 =
      montserratSemiBold14.copyWith(color: ColorConstant.black);
  static TextStyle montserratSemiBold14Primary =
      montserratSemiBold14.copyWith(color: ColorConstant.primary);
  static TextStyle montserratSemiBold14_222020 =
      montserratSemiBold14.copyWith(color: ColorConstant.color_222020);
  static TextStyle montserratSemiBold14_0057FF =
      montserratSemiBold14.copyWith(color: ColorConstant.color_0057FF);

  // define color montserratSemiBold16
  static TextStyle montserratSemiBold16FFFFFF =
      montserratSemiBold16.copyWith(color: ColorConstant.white);
  static TextStyle montserratSemiBold16_000000 =
      montserratSemiBold16.copyWith(color: ColorConstant.black);
  static TextStyle montserratSemiBold16_6FC32D =
      montserratSemiBold16.copyWith(color: ColorConstant.color_6FC32D);

  // define color montserratSemiBold18
  static TextStyle montserratSemiBold18FFFFFF =
      montserratSemiBold18.copyWith(color: ColorConstant.white);
  static TextStyle montserratSemiBold18_000000 =
      montserratSemiBold18.copyWith(color: ColorConstant.black);

  // define color montserratBold12
  static TextStyle montserratBold12FFFFFF =
      montserratBold12.copyWith(color: ColorConstant.white);
  static TextStyle montserratBold12_000000 =
      montserratBold12.copyWith(color: ColorConstant.black);
  static TextStyle montserratBold12_222020 =
      montserratBold12.copyWith(color: ColorConstant.color_222020);

  // define color montserratBold14
  static TextStyle montserratBold14FFFFFF =
      montserratBold14.copyWith(color: ColorConstant.white);
  static TextStyle montserratBold14_000000 =
      montserratBold14.copyWith(color: ColorConstant.black);
  static TextStyle montserratBold14_616264 =
      montserratBold14.copyWith(color: ColorConstant.color_616264);
  static TextStyle montserratBold14_222020 =
      montserratBold14.copyWith(color: ColorConstant.color_222020);
  static TextStyle montserratBold14Primary =
      montserratBold14.copyWith(color: ColorConstant.primary);
  static TextStyle montserratBold14_0057FF =
      montserratBold14.copyWith(color: ColorConstant.color_0057FF);
  // define color montserratBold16P
  static TextStyle montserratBold16FFFFFF =
      montserratBold16.copyWith(color: ColorConstant.white);
  static TextStyle montserratBold16_000000 =
      montserratBold16.copyWith(color: ColorConstant.black);
  static TextStyle montserratBold16Primary =
      montserratBold16.copyWith(color: ColorConstant.primary);

  // define color montserratBold18
  static TextStyle montserratBold18FFFFFF =
      montserratBold18.copyWith(color: ColorConstant.white);
  static TextStyle montserratBold18_000000 =
      montserratBold18.copyWith(color: ColorConstant.black);
}
