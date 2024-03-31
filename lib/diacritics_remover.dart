class DiacriticsRemover {
  static String remove(String input) {
    return input
        .replaceAll(RegExp(r'[àáạảãâầấậẩẫăằắặẳẵ]', caseSensitive: false), 'a')
        .replaceAll(RegExp(r'[èéẹẻẽêềếệểễ]', caseSensitive: false), 'e')
        .replaceAll(RegExp(r'[ìíịỉĩ]', caseSensitive: false), 'i')
        .replaceAll(RegExp(r'[òóọỏõôồốộổỗơờớợởỡ]', caseSensitive: false), 'o')
        .replaceAll(RegExp(r'[ùúụủũưừứựửữ]', caseSensitive: false), 'u')
        .replaceAll(RegExp(r'[ỳýỵỷỹ]', caseSensitive: false), 'y')
        .replaceAll(RegExp(r'[đ]', caseSensitive: false), 'd');
  }
}
