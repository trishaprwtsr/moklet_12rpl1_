import 'package:get/get.dart';

import '../modules/bottombar/bindings/bottombar_binding.dart';
import '../modules/bottombar/views/bottombar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/mapel/bindings/mapel_binding.dart';
import '../modules/mapel/views/mapel_view.dart';
import '../modules/profil/bindings/profil_binding.dart';
import '../modules/profil/views/profil_view.dart';
import '../modules/tahunajaran/bindings/tahunajaran_binding.dart';
import '../modules/tahunajaran/views/tahunajaran_view.dart';
import '../modules/mapel/views/mapel_tambah_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOMBAR;
  

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMBAR,
      page: () => const BottombarView(),
      binding: BottombarBinding(),
    ),
    GetPage(
      name: _Paths.MAPEL,
      page: () => const MapelView(),
      binding: MapelBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => const ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.TAHUNAJARAN,
      page: () => const TahunajaranView(),
      binding: TahunajaranBinding(),
    ),
    GetPage(
  	name: _Paths.MAPELTAMBAH,
  	page: () => const MapelTambahView(),
  	binding: MapelBinding(),
	),

  ];
}
