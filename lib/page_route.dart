import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:router/transition.dart';

class PageRoute {
  PageRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.routes,
    this.redirect,
    this.transition,
  });

  final String name;
  final String path;
  final Widget Function(BuildContext, GoRouterState) builder;
  final List<PageRoute>? routes;
  final FutureOr<String?> Function(BuildContext, GoRouterState)? redirect;
  final PageTransition? transition;

  GoRoute toGoRoute({bool isSubRoute = false}) => GoRoute(
        name: name,
        path: (isSubRoute && path.startsWith('/')) ? path.substring(1) : path,
        routes: routes?.map<GoRoute>((route) => route.toGoRoute(isSubRoute: true)).toList() ?? [],
        builder: builder,
        pageBuilder: (transition != null)
            ? (context, state) {
                final page = builder(context, state);
                return transition!.builder(page);
              }
            : null,
        redirect: (context, state) async {
          return await redirect?.call(context, state);
        },
      );
}
