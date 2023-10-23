// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CartDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CartDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CartDetailPage(
          key: args.key,
          model: args.model,
        ),
      );
    },
    CartMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartMainPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for
/// [CartDetailPage]
class CartDetailRoute extends PageRouteInfo<CartDetailRouteArgs> {
  CartDetailRoute({
    Key? key,
    required CartModel model,
    List<PageRouteInfo>? children,
  }) : super(
          CartDetailRoute.name,
          args: CartDetailRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'CartDetailRoute';

  static const PageInfo<CartDetailRouteArgs> page =
      PageInfo<CartDetailRouteArgs>(name);
}

class CartDetailRouteArgs {
  const CartDetailRouteArgs({
    this.key,
    required this.model,
  });

  final Key? key;

  final CartModel model;

  @override
  String toString() {
    return 'CartDetailRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [CartMainPage]
class CartMainRoute extends PageRouteInfo<void> {
  const CartMainRoute({List<PageRouteInfo>? children})
      : super(
          CartMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
