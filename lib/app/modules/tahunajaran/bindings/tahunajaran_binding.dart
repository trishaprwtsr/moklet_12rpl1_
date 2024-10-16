import 'package:get/get.dart';

import '../controllers/tahunajaran_controller.dart';

class TahunajaranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TahunajaranController>(
      () => TahunajaranController(),
    );
  }
}
