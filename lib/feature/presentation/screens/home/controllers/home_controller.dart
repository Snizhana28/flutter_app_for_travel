import 'package:get/get.dart';

class HomeController extends GetxController {
  var activeKey = 'Most Viewed'.obs;
  var buttonTextMap = <String, bool>{
    'Most Viewed': true,
    'Nearby': false,
    'Latest': false,
    'Popular': false,
    'Most Searched Places': false,
  }.obs;

  void changeButtonState(String key) {
    if (key != activeKey.value) {
      for (var item in buttonTextMap.entries) {
        buttonTextMap.update(item.key, (value) => false);
      }
      activeKey.value = key;
      buttonTextMap.update(key, (value) => !value);
      update();
    }
  }
}
