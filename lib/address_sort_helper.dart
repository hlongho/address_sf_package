import 'address_model.dart';

List<Address?> sortAddressList(List<Address?> addressList) {
  addressList.sort((a, b) {
    String nameA = a?.name ?? '';
    String nameB = b?.name ?? '';
    nameA = nameA.replaceAll('Đ', 'D');
    nameB = nameB.replaceAll('Đ', 'D');

    return nameA.compareTo(nameB);
  });
  return addressList;
}
