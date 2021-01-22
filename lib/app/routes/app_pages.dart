import 'package:get/get.dart';

import 'package:growallet/app/modules/calculator/bindings/calculator_binding.dart';
import 'package:growallet/app/modules/calculator/views/calculator_view.dart';
import 'package:growallet/app/modules/home/bindings/home_binding.dart';
import 'package:growallet/app/modules/home/views/home_view.dart';
import 'package:growallet/app/modules/login/bindings/login_binding.dart';
import 'package:growallet/app/modules/login/views/login_view.dart';
import 'package:growallet/app/modules/pool_detail/bindings/pool_detail_binding.dart';
import 'package:growallet/app/modules/pool_detail/views/pool_detail_view.dart';
import 'package:growallet/app/modules/pool_list/bindings/pool_list_binding.dart';
import 'package:growallet/app/modules/pool_list/views/pool_list_view.dart';
import 'package:growallet/app/modules/pool_list_detail/bindings/pool_list_detail_binding.dart';
import 'package:growallet/app/modules/pool_list_detail/views/pool_list_detail_view.dart';
import 'package:growallet/app/modules/token_page/bindings/token_page_binding.dart';
import 'package:growallet/app/modules/token_page/views/token_page_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.POOL_LIST,
      page: () => PoolListView(),
      binding: PoolListBinding(),
    ),
    GetPage(
      name: _Paths.POOL_DETAIL,
      page: () => PoolDetailView(),
      binding: PoolDetailBinding(),
    ),
    GetPage(
      name: _Paths.TOKEN_PAGE,
      page: () => TokenPageView(),
      binding: TokenPageBinding(),
    ),
    GetPage(
      name: _Paths.POOL_LIST_DETAIL,
      page: () => PoolListDetailView(),
      binding: PoolListDetailBinding(),
    ),
    GetPage(
      name: _Paths.CALCULATOR,
      page: () => CalculatorView(),
      binding: CalculatorBinding(),
    ),
  ];
}
