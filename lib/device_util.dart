class DeviceUtil {
  DeviceUtil._();

  static final DeviceUtil _instance = DeviceUtil._();
  static DeviceUtil get instance => _instance;
  static bool isLandscape = false;
  static Device device = Device.iphone;

  static Device getDeviceType() {
    return device == Device.iphone
        ? Device.iphone
        : isLandscape
            ? Device.ipadLandscape
            : Device.ipad;
  }
}

enum Device { iphone, ipad, ipadLandscape }
