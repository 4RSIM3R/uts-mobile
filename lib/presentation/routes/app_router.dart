import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:next_starter/data/models/cart/cart_model.dart';
import 'package:next_starter/presentation/pages/cart/detail/cart_detail_page.dart';
import 'package:next_starter/presentation/pages/cart/main/cart_main_page.dart';

import '../pages/pages.dart';

part 'app_router.gr.dart';

@LazySingleton()
@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, path: '/'),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: CartDetailRoute.page),
    AutoRoute(page: CartMainRoute.page),
  ];
}
