import 'package:get/get.dart';

class UiStateController extends GetxController {
  static UiStateController get instance => Get.find();

  void signInFunction() {
    print('sign in');
  }

  void helpFunction() {
    print('help');
  }

  void joinUsFunction() {
    print('join us');
  }

  void homeFuntion() {}
  void newArrivalFunction() {}
  void shopFunction() {}
  void lastColFunction() {}
  void menFunction() {}
  void womenFunction() {}
}
