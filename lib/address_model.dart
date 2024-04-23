class AddressModel {
  List<Address>? address;

  AddressModel({this.address});

  AddressModel.fromJson(Map<String, dynamic> json) {
    if (json['address'] != null) {
      address = <Address>[];
      json['address'].forEach((v) {
        address!.add(Address.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (address != null) {
      data['address'] = address!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Address {
  String? sfid;
  String? name;
  String? codeC;
  String? codeDistrictC;
  String? codeWardC;
  String? levelsC;
  String? parentC;
  String? recordtypeid;

  Address(
      {this.sfid,
        this.name,
        this.codeC,
        this.codeDistrictC,
        this.codeWardC,
        this.levelsC,
        this.parentC,
        this.recordtypeid});

  Address.fromJson(Map<String, dynamic> json) {
    sfid = json['sfid'];
    name = json['name'];
    codeC = json['code__c'];
    codeDistrictC = json['code_district__c'];
    codeWardC = json['code_ward__c'];
    levelsC = json['levels__c'];
    parentC = json['parent__c'];
    recordtypeid = json['recordtypeid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sfid'] = sfid;
    data['name'] = name;
    data['code__c'] = codeC;
    data['code_district__c'] = codeDistrictC;
    data['code_ward__c'] = codeWardC;
    data['levels__c'] = levelsC;
    data['parent__c'] = parentC;
    data['recordtypeid'] = recordtypeid;
    return data;
  }
}