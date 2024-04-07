import 'dart:io';

import 'package:chibi/core/router/app_router_consts.dart';
import 'package:chibi/core/router/transitons.dart';
import 'package:chibi/features/profile/presentation/profile.dart';
import 'package:chibi/features/scaffold_with_bottom_nav/scaffold_with_bottom_nav.dart';
import 'package:chibi/features/home/presentation/home.dart';
import 'package:chibi/features/progress/presentation/progress.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  final bool isTesting;

  AppRouter({required this.isTesting});

  GoRouter router() => GoRouter(
        initialLocation: AppRouterPaths.home,
        navigatorKey: navigatorKey,
        debugLogDiagnostics: false,
        routes: [
          ShellRoute(
            pageBuilder: (context, state, child) => TransitionPage(
              key: state.pageKey,
              child: ScaffoldWithBottomNav(
                child: child,
              ),
            ),
            routes: [
              GoRoute(
                path: AppRouterPaths.home,
                name: AppRouterPaths.home,
                pageBuilder: (context, state) {
                  return TransitionPage(
                      key: state.pageKey, child: const Home());
                },
              ),
              GoRoute(
                path: AppRouterPaths.progress,
                name: AppRouterPaths.progress,
                pageBuilder: (context, state) {
                  return TransitionPage(
                      key: state.pageKey, child: const Progress());
                },
              ),
              GoRoute(
                path: AppRouterPaths.profile,
                name: AppRouterPaths.profile,
                pageBuilder: (context, state) {
                  return TransitionPage(
                      key: state.pageKey, child: const Profile());
                },
              ),
            ],
          ),
        ],
      );
}

final appRouter = AppRouter(isTesting: false).router();

// class DetailsRoute extends GoRoute {
//   final bool isTesting;
//   final String routePath;
//   final String? routeName;
//   final List<RouteBase>? routeRoutes;

//   DetailsRoute({
//     required this.isTesting,
//     required this.routePath,
//     this.routeName,
//     this.routeRoutes,
//   }) : super(
//           path: routePath,
//           name: routeName,
//           pageBuilder: (context, state) {
//             String? productId;
//             String orderContext = '';
//             String? orderContextId;
//             AppProductDTO? dto;

//             if (state.extra != null) {
//               dto = state.extra as AppProductDTO;
//             }
//             if (state.uri.queryParameters['product_id'] != null) {
//               productId = state.uri.queryParameters['product_id'];
//             }
//             if (state.uri.queryParameters['be_context'] != null) {
//               orderContext = state.uri.queryParameters['be_context']!;
//             }
//             if (state.uri.queryParameters['be_context_id'] != null) {
//               orderContextId = state.uri.queryParameters['be_context_id']!;
//             }
//             logger.d(
//                 '!! set orderContext ${state.uri.queryParameters['be_context']}! 2: $orderContext orderContextId $orderContextId');

//             return isTesting
//                 ? SlideTransitionPage(
//                     key: state.pageKey,
//                     child: ProductDetails(
//                       isTesting: isTesting,
//                       orderContext: '',
//                       selectedID: '',
//                       productDTO: AppProductDTO(),
//                     ))
//                 : SlideTransitionPage(
//                     key: state.pageKey,
//                     child: ProductDetails(
//                         isTesting: isTesting,
//                         selectedID: productId,
//                         productDTO: dto,
//                         orderContext: orderContext,
//                         orderContextId: orderContextId));
//           },
//           routes: routeRoutes ?? [],
//         );
// }

extension GoRouterLocation on GoRouter {
  String get location {
    final RouteMatch lastMatch =
        Platform.environment.containsKey('FLUTTER_TEST')
            ? RouteMatch(
                route: GoRoute(
                    path: AppRouterPaths.home,
                    name: AppRouteNames.home,
                    pageBuilder: (context, state) => SlideTransitionPage(
                        key: state.pageKey, child: const Home())),
                pageKey: const ValueKey('routeTesting'),
                matchedLocation: '')
            : routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
