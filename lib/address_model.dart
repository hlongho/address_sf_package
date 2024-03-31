class AddressModel {
  List<Address>? address;

  AddressModel({this.address});

  AddressModel.fromJson(Map<String, dynamic> json) {
    if (json['address'] != null) {
      address = <Address>[];
      json['address'].forEach((v) {
        address!.add(new Address.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.address != null) {
      data['address'] = this.address!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sfid'] = this.sfid;
    data['name'] = this.name;
    data['code__c'] = this.codeC;
    data['code_district__c'] = this.codeDistrictC;
    data['code_ward__c'] = this.codeWardC;
    data['levels__c'] = this.levelsC;
    data['parent__c'] = this.parentC;
    data['recordtypeid'] = this.recordtypeid;
    return data;
  }
}