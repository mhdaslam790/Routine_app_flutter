import 'package:auto_route/annotations.dart';
import 'package:flutter_template/presentation/core/pages/routine_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: <AutoRoute>[
    ///[Core]
    AutoRoute(page: RoutinePage, initial: true),
  ],
)
class $AppRouter {}
