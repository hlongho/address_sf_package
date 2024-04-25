import 'dart:developer';

import 'package:address_sf_package/responsive_util.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'address_model.dart';
import 'address_sort_helper.dart';
import 'app_style.dart';
import 'custom_border_dropdown.dart';
import 'custom_image_view.dart';
import 'custom_text_form_field.dart';
import 'diacritics_remover.dart';
import 'image_constant.dart';
import 'json_util.dart';

//ignore: must_be_immutable
class AddressSfPackage extends StatefulWidget {
  Function(String) onChangeAddress;
  Function(Address?, Address?, Address?) onSelectedProvinceDistrictWard;
  String? initAddress;
  String? initProvince;
  String? initDistrict;
  String? initWard;
  String addressPathJson;
  AddressSfPackage(
      {required this.onChangeAddress,
      required this.onSelectedProvinceDistrictWard,
      required this.addressPathJson,
      this.initAddress,
      this.initProvince,
      this.initDistrict,
      this.initWard,
      super.key});

  @override
  State<AddressSfPackage> createState() => _AddressSfPackageState();
}

class _AddressSfPackageState extends State<AddressSfPackage> {
  TextEditingController addressController = TextEditingController();
  TextEditingController provinceSearchController = TextEditingController();
  TextEditingController districtSearchController = TextEditingController();
  TextEditingController wardSearchController = TextEditingController();
  List<Address> address = [];
  Address? province;
  Address? district;
  Address? ward;

  initAddress() {
    JsonUtil.instance.getAddress(widget.addressPathJson).then((value) {
      setState(() {
        address = value;
        addressController.text = widget.initAddress ?? "";
        try {
          province = address
              .firstWhere((element) => element.sfid == widget.initProvince);
          district = address
              .firstWhere((element) => element.sfid == widget.initDistrict);
          ward =
              address.firstWhere((element) => element.sfid == widget.initWard);
        } catch (e) {
          log('không tìm thấy vị trí đã init');
        }
      });
    });
  }

  @override
  void initState() {
    initAddress();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Địa chỉ',
              style: AppStyle.montserratSemiBold14_000000,
            ),
            SizedBox(
                height: ResponsiveUtil.getSize(
              iphone: 8,
              ipad: 8,
              ipadLandscape: 8,
            )),
            CustomTextFormField(
              controller: addressController,
              hintStyle: AppStyle.montserratRegular14_616264,
              textInputAction: TextInputAction.done,
              textStyle: AppStyle.montserratRegular14_222020,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(
                  ResponsiveUtil.getSize(
                      iphone: 30, ipad: 20, ipadLandscape: 20),
                  ResponsiveUtil.getSize(
                      iphone: 13, ipad: 12, ipadLandscape: 12),
                  ResponsiveUtil.getSize(
                      iphone: 20, ipad: 20, ipadLandscape: 20),
                  ResponsiveUtil.getSize(
                      iphone: 13, ipad: 12, ipadLandscape: 12),
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgEdit,
                ),
              ),
              onChanged: (value) {
                widget.onChangeAddress(value);
              },
              suffixConstraints: const BoxConstraints(
                maxHeight: 44,
              ),
              contentPadding: const EdgeInsets.only(
                left: 20,
                top: 13,
                bottom: 13,
              ),
            ),
          ],
        ),
        SizedBox(
          height: ResponsiveUtil.getSize(
            iphone: 24,
            ipad: 24,
            ipadLandscape: 24,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tỉnh/Thành phố',
              style: AppStyle.montserratSemiBold14_000000,
            ),
            SizedBox(
                height: ResponsiveUtil.getSize(
              iphone: 8,
              ipad: 8,
              ipadLandscape: 8,
            )),
            customBorderDropdown(
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<Address?>(
                    value: province,
                    hint:
                        Text("Chọn", style: AppStyle.montserratRegular14AAB0B4),
                    isExpanded: true,
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 400,
                      width: ResponsiveUtil.getSize(
                          iphone: 226, ipad: 300, ipadLandscape: 435),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Colors.white),
                        color: const Color(0xFFF6F6F6),
                      ),
                      offset: Offset(MediaQuery.of(context).size.width, 400),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    iconStyleData: IconStyleData(
                      icon: CustomImageView(
                        svgPath: ImageConstant.imgArrowdown,
                      ),
                      iconSize: 14,
                    ),
                    style: AppStyle.montserratRegular14_222020,
                    onChanged: (value) {
                      setState(() {
                        setState(() {
                          province = value;
                          district = null;
                          ward = null;
                          widget.onSelectedProvinceDistrictWard(
                              province, district, ward);
                        });
                      });
                    },
                    dropdownSearchData: DropdownSearchData(
                      searchController: provinceSearchController,
                      searchInnerWidgetHeight: 50,
                      searchInnerWidget: Container(
                        height: 50,
                        padding: const EdgeInsets.only(
                          top: 8,
                          bottom: 4,
                          right: 8,
                          left: 8,
                        ),
                        child: TextFormField(
                          controller: provinceSearchController,
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            hintText: 'Nhập tên Tỉnh/Thành phố...',
                            hintStyle: AppStyle.montserratRegular12_222020,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      searchMatchFn: (item, searchValue) {
                        String itemValue = DiacriticsRemover.remove(
                                item.value!.name.toString())
                            .toLowerCase();
                        String searchInputValue =
                            DiacriticsRemover.remove(searchValue).toLowerCase();
                        return itemValue.contains(searchInputValue);
                      },
                    ),
                    items: sortAddressList(address
                            .where((element) => element.codeC != null)
                            .toList())
                        .map<DropdownMenuItem<Address?>>((Address? value) {
                      return DropdownMenuItem<Address?>(
                          value: value, child: Text(value?.name ?? ""));
                    }).toList()),
              ),
            ),
          ],
        ),
        SizedBox(
          height: ResponsiveUtil.getSize(
            iphone: 24,
            ipad: 24,
            ipadLandscape: 24,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quận/Huyện',
              style: AppStyle.montserratSemiBold14_000000,
            ),
            SizedBox(
                height: ResponsiveUtil.getSize(
              iphone: 8,
              ipad: 8,
              ipadLandscape: 8,
            )),
            customBorderDropdown(
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<Address?>(
                    value: district,
                    hint:
                        Text("Chọn", style: AppStyle.montserratRegular14AAB0B4),
                    isExpanded: true,
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 400,
                      width: ResponsiveUtil.getSize(
                          iphone: 226, ipad: 300, ipadLandscape: 435),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Colors.white),
                        color: const Color(0xFFF6F6F6),
                      ),
                      offset: Offset(MediaQuery.of(context).size.width, 400),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    iconStyleData: IconStyleData(
                      icon: CustomImageView(
                        svgPath: ImageConstant.imgArrowdown,
                      ),
                      iconSize: 14,
                    ),
                    dropdownSearchData: DropdownSearchData(
                      searchController: districtSearchController,
                      searchInnerWidgetHeight: 50,
                      searchInnerWidget: Container(
                        height: 50,
                        padding: const EdgeInsets.only(
                          top: 8,
                          bottom: 4,
                          right: 8,
                          left: 8,
                        ),
                        child: TextFormField(
                          controller: districtSearchController,
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            hintText: 'Nhập tên Quận/Huyện...',
                            hintStyle: AppStyle.montserratRegular12_222020,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      searchMatchFn: (item, searchValue) {
                        String itemValue = DiacriticsRemover.remove(
                                item.value!.name.toString())
                            .toLowerCase();
                        String searchInputValue =
                            DiacriticsRemover.remove(searchValue).toLowerCase();
                        return itemValue.contains(searchInputValue);
                      },
                    ),
                    style: AppStyle.montserratRegular14_222020,
                    onChanged: (value) {
                      setState(() {
                        setState(() {
                          district = value;
                          ward = null;
                          widget.onSelectedProvinceDistrictWard(
                              province, district, ward);
                        });
                      });
                    },
                    items: sortAddressList(address
                            .where((element) =>
                                element.codeDistrictC != null &&
                                element.parentC == province?.sfid)
                            .toList())
                        .map<DropdownMenuItem<Address?>>((Address? value) {
                      return DropdownMenuItem<Address?>(
                          value: value, child: Text(value?.name ?? ""));
                    }).toList()),
              ),
            ),
          ],
        ),
        SizedBox(
          height: ResponsiveUtil.getSize(
            iphone: 24,
            ipad: 24,
            ipadLandscape: 24,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Phường/Xã',
              style: AppStyle.montserratSemiBold14_000000,
            ),
            SizedBox(
              height: ResponsiveUtil.getSize(
                iphone: 8,
                ipad: 8,
                ipadLandscape: 8,
              ),
            ),
            customBorderDropdown(
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<Address?>(
                    value: ward,
                    hint:
                        Text("Chọn", style: AppStyle.montserratRegular14AAB0B4),
                    isExpanded: true,
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 400,
                      width: ResponsiveUtil.getSize(
                          iphone: 226, ipad: 300, ipadLandscape: 435),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Colors.white),
                        color: const Color(0xFFF6F6F6),
                      ),
                      offset: Offset(MediaQuery.of(context).size.width, 400),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    iconStyleData: IconStyleData(
                      icon: CustomImageView(
                        svgPath: ImageConstant.imgArrowdown,
                      ),
                      iconSize: 14,
                    ),
                    dropdownSearchData: DropdownSearchData(
                      searchController: wardSearchController,
                      searchInnerWidgetHeight: 50,
                      searchInnerWidget: Container(
                        height: 50,
                        padding: const EdgeInsets.only(
                          top: 8,
                          bottom: 4,
                          right: 8,
                          left: 8,
                        ),
                        child: TextFormField(
                          controller: wardSearchController,
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            hintText: 'Nhập tên Phường/Xã...',
                            hintStyle: AppStyle.montserratRegular12_222020,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      searchMatchFn: (item, searchValue) {
                        String itemValue = DiacriticsRemover.remove(
                                item.value!.name.toString())
                            .toLowerCase();
                        String searchInputValue =
                            DiacriticsRemover.remove(searchValue).toLowerCase();
                        return itemValue.contains(searchInputValue);
                      },
                    ),
                    style: AppStyle.montserratRegular14_222020,
                    onChanged: (value) {
                      setState(() {
                        setState(() {
                          ward = value;
                          widget.onSelectedProvinceDistrictWard(
                              province, district, ward);
                        });
                      });
                    },
                    items: sortAddressList(address
                            .where((element) =>
                                element.codeWardC != null &&
                                element.parentC == district?.sfid)
                            .toList())
                        .map<DropdownMenuItem<Address?>>((Address? value) {
                      return DropdownMenuItem<Address?>(
                          value: value, child: Text(value?.name ?? ""));
                    }).toList()),
              ),
            ),
          ],
        )
      ],
    );
  }
}
