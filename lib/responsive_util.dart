import 'device_util.dart';

class ResponsiveUtil {
  ResponsiveUtil._();

  static final ResponsiveUtil _instance = ResponsiveUtil._();

  static ResponsiveUtil get instance => _instance;

  static int getFlex({int? iphone, int? ipad, int? ipadLandscape}) {
    switch (DeviceUtil.getDeviceType()) {
      case Device.iphone:
        return iphone ?? 1 ;
      case Device.ipad:
        return ipad ?? 1;
      case Device.ipadLandscape:
        return ipadLandscape ?? 1;
    }
  }

  static double getSize({double? iphone, double? ipad, double? ipadLandscape}) {
    switch (DeviceUtil.getDeviceType()) {
      case Device.iphone:
        return iphone ?? 100;
      case Device.ipad:
        return ipad ?? 200;
      case Device.ipadLandscape:
        return ipadLandscape ?? 200;
    }
  }

  static int getCrossAxisCount({int? iphone, int? ipad , int? ipadLandscape ,})
  {
    switch (DeviceUtil.getDeviceType()) {
      case Device.iphone:
        return iphone ?? 1;
      case Device.ipad:
        return ipad ?? 2;
      case Device.ipadLandscape:
        return ipadLandscape ?? 3;
    }
  }

}
