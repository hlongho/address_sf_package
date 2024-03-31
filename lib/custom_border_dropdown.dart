import 'package:address_sf_package/responsive_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color_constant.dart';

Widget CustomBorderDropdown({Widget? child}) {
  return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(
        ResponsiveUtil.getSize(iphone: 16, ipad: 20, ipadLandscape: 20),
        ResponsiveUtil.getSize(iphone: 0, ipad: 6, ipadLandscape: 6),
        ResponsiveUtil.getSize(iphone: 16, ipad: 20, ipadLandscape: 20),
        ResponsiveUtil.getSize(iphone: 0, ipad: 6, ipadLandscape: 6),
      ),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: ColorConstant.color_e6e6e6),
          color: Colors.white),
      height: 44,
      child: child);
}
