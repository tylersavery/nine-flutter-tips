import 'device_utils_interface.dart';

class DeviceUtilsImplemention extends DeviceUtilsInterface {
  @override
  void updateDateTime() {
    print("${DateTime.now()}");
  }
}
