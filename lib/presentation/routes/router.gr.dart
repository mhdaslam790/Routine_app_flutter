// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../core/pages/routine_page.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    RoutineRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.RoutinePage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes =>
      [_i2.RouteConfig(RoutineRoute.name, path: '/')];
}

/// generated route for
/// [_i1.RoutinePage]
class RoutineRoute extends _i2.PageRouteInfo<void> {
  const RoutineRoute() : super(RoutineRoute.name, path: '/');

  static const String name = 'RoutineRoute';
}
