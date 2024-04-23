Package phục vụ cho việc sử dụng data address export từ salesforce.
để người dùng chọn vị trí từ cấp tỉnh, quận, xã và nhập địa chỉ chính xác

## Features
Đọc data address từ data đã export
init vị trí đã có sẵn để show thông tin sẵn có
Tìm kiếm địa chỉ bằng cách nhập tên vào thanh search và list dropdown
Trả về vị trí đã nhập hoặc tỉnh, quận, xã đã chọn
Xử lý logic khi chọn Tỉnh, Quận, Xã
## Getting started
Đơn giản, dễ sử dụng

## Usage
- Hiện có 3 cách để khai báo package vào dự án:
### Download package về và bỏ vào dự án và khai báo vào pubspec.yaml
```
address_sf_package:
  path: ./address_sf_package
```
### Khai báo link github vào pubspec.yaml
```
address_sf_package:
  git:
    url: https://github.com/hlongho/address_sf_package.git
    ref: main
```
```
import 'package:address_sf_package/address_sf_package.dart';
```
### import từ pub.dev
```
flutter pub add address_sf_package
```

## code mẫu
```
AddressSfPackage(
  onChangeAddress: (address) {
      print(address); 
  },
  onSelectedProvinceDistrictWard: (province, district, ward) {
      print(province?.name);
      print(district?.name);
      print(ward?.name);
  },
  addressPathJson: 'assets/address/address_dev.json',
  initAddress: '',
  initProvince: province_sfid,
  initDistrict: district_sfid,
  initWard: ward_sfid,
)
```
  
## cách đưa file json address vào dự án
- lấy file json address đã export bỏ vào dự án theo path: assets/address/address_dev.json
- Khai báo assets/address vào pubspec.yaml

## data mẫu
```
{
    "address": [
        {
            "sfid" : "a031m000006HSnAAAW",
            "name" : "Thành phố Hà Nội",
            "code__c" : "01",
            "code_district__c" : null,
            "code_ward__c" : null,
            "levels__c" : null,
            "parent__c" : null,
            "recordtypeid" : "0121m000001paU7AAI"
        },
        {
            "sfid" : "a031m000006HSnBAAW",
            "name" : "Thành phố Hải Phòng",
            "code__c" : "31",
            "code_district__c" : null,
            "code_ward__c" : null,
            "levels__c" : null,
            "parent__c" : null,
            "recordtypeid" : "0121m000001paU7AAI"
        },
        {
            "sfid" : "a031m000006HSnCAAW",
            "name" : "Tỉnh Bắc Giang",
            "code__c" : "24",
            "code_district__c" : null,
            "code_ward__c" : null,
            "levels__c" : null,
            "parent__c" : null,
            "recordtypeid" : "0121m000001paU7AAI"
        },
        {
            "sfid" : "a031m000006HSnDAAW",
            "name" : "Tỉnh Bắc Kạn",
            "code__c" : "06",
            "code_district__c" : null,
            "code_ward__c" : null,
            "levels__c" : null,
            "parent__c" : null,
            "recordtypeid" : "0121m000001paU7AAI"
        },
        {
            "sfid" : "a031m000006HSnEAAW",
            "name" : "Tỉnh Bắc Ninh",
            "code__c" : "27",
            "code_district__c" : null,
            "code_ward__c" : null,
            "levels__c" : null,
            "parent__c" : null,
            "recordtypeid" : "0121m000001paU7AAI"
        },
        {
            "sfid" : "a031m000006HSnFAAW",
            "name" : "Tỉnh Cao Bằng",
            "code__c" : "04",
            "code_district__c" : null,
            "code_ward__c" : null,
            "levels__c" : null,
            "parent__c" : null,
            "recordtypeid" : "0121m000001paU7AAI"
        }
    ]
}
```

## Chú ý
khi import vào mà chạy lỗi trên ios thì nhớ điều chỉnh:
- platform :ios, '12.0' trong podfile
hoặc 
- mở Xcode trong target -> general -> minimum deployment -> chỉnh lên 12

Thắc mắc gì thì vào https://github.com/hlongho/example_address_sf_package xem ví dụ nhe
hí hí :)))
