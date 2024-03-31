import 'dart:convert';

import 'package:flutter/services.dart';

import 'address_model.dart';

class JsonUtil {
  JsonUtil._();

  static final JsonUtil _instance = JsonUtil._();

  static JsonUtil get instance => _instance;

  Future<List<Address>> getAddress(String addressPathJson) async {
    String jsonAddress;
    jsonAddress = await rootBundle.loadString(addressPathJson);

    Map<String, dynamic> map = new Map();
    map = jsonDecode(jsonAddress);
    return AddressModel.fromJson(map).address ?? [];
  }
}
