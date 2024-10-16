import 'package:get/get.dart';
import 'package:siakad/app/data/models/model_tahunajaran.dart';
import 'package:siakad/app/data/repositories/repository_tahunajaran.dart';

class TahunajaranController extends GetxController {
  //TODO: Implement TahunajaranController

  final count = 0.obs;
  Rx<bool> isLoaded = false.obs;
  Rx<ModelTahunAjaran> tahunajaran = ModelTahunAjaran().obs;

  @override
  void onInit() {
    super.onInit();
    getTahunAjaran();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  
  void getTahunAjaran() {
    isLoaded(false);
	  RepositoryTahunAjaran().loadTahunAjaran().then((ModelTahunAjaran response) {
  	tahunajaran(response);
  	isLoaded(true);
	});
  }
}
