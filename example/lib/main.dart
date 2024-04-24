import 'dart:developer';

import 'package:address_sf_package/address_sf_package.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AddressSfPackage(
            onChangeAddress: (address) {
              log(address);
            },
            onSelectedProvinceDistrictWard: (province, district, ward) {
              log(province?.name ?? 'Chưa chọn tỉnh');
              log(district?.name ?? 'Chưa chọn huyện');
              log(ward?.name ?? 'Chưa chọn xã');
            },
            addressPathJson: 'assets/address/address_dev.json',
            initAddress: '',
            initProvince: null,
            initDistrict: null,
            initWard: null,
          ),
        ),
      ),
    );
  }
}
