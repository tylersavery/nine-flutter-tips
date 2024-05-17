import 'package:web/web.dart';
import 'package:flutter_tips/device_utils/device_utils_interface.dart';

class DeviceUtilsImplemention extends DeviceUtilsInterface {
  @override
  void updateDateTime() {
    final div = document.querySelector('.date');

    if (div != null) {
      div.text = 'Text set as ${DateTime.now()}';
    }
  }
}
