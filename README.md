Package phục vụ cho việc sử dụng data address export từ salesforce.
để người dùng chọn vị trí từ cấp tỉnh, quận, xã và nhập địa chỉ chính xác

## Features
init vị trí đã có sẵn để show thông tin sẵn có
Tìm kiếm địa chỉ bằng cách nhập tên vào thanh search và list dropdown
Trả về vị trí đã nhập hoặc tỉnh, quận, xã đã chọn
Xử lý logic khi chọn Tỉnh, Quận, Xã
## Getting started
Đơn giản, dễ sử dụng

## Usage
- Hiện có 2 cách để khai báo package vào dự án:
  + Download package về và bỏ vào dự án và khai báo vào pubspec.yaml
    address_sf_package:
      path: ./address_sf_package
  + Khai báo link github vào pubspec.yaml
    address_sf_package:
    git:
        url: https://github.com/hlongho/address_sf_package.git
        ref: main

- import 'package:address_sf_package/address_sf_package.dart';

## code mẫu
AddressSfPackage(
# Trả về vị trí đã nhập vào
  onChangeAddress: (address) {
      print(address); 
  },

# Trả về theo thứ tự Tỉnh, Quận, Huyện đã chọn
  onSelectedProvinceDistrictWard: (province, district, ward) {
      print(province?.name);
      print(district?.name);
      print(ward?.name);
  },
# Path file json address
  addressPathJson: 'assets/address/address_dev.json',
# init với address, sfid của Tỉnh, Quận, Huyện 
  initAddress: '',
  initProvince: xxxxxxx,
  initDistrict: yyyyyyy,
  initWard: zzzzzzz,
)
  
## cách đưa file json address vào dự án
- lấy file json address đã export bỏ vào dự án theo path: assets/address/address_dev.json
- Khai báo assets/address vào pubspec.yaml
