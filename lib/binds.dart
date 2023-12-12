import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import 'product_controller.dart';

class binds extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => product_controller());
  }

}