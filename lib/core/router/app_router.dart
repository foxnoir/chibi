import 'dart:io';

import 'package:chibi/core/router/app_router_consts.dart';
import 'package:chibi/core/router/transitons.dart';
import 'package:chibi/features/profile/presentation/profile.dart';
import 'package:chibi/features/profile_editor/presentation/profile_editor.dart';
import 'package:chibi/features/scaffold_with_bottom_nav/scaffold_with_bottom_nav.dart';
import 'package:chibi/features/home/presentation/home.dart';
import 'package:chibi/features/progress/presentation/progress.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  final bool isTesting;
  final BuildContext context;

  AppRouter({required this.isTesting, required this.context});

  GoRouter router([String? initialLocation]) => GoRouter(
        initialLocation: initialLocation ?? AppRouterPaths.profile,
        navigatorKey: navigatorKey,
        debugLogDiagnostics: false,
        routes: [
          ShellRoute(
            pageBuilder: (context, state, child) => TransitionPage(
              key: state.pageKey,
              child: Scaffold(
                body: child,
              ),
            ),
            routes: [
              GoRoute(
                path: AppRouterPaths.home,
                name: AppRouteNames.home,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                      key: state.pageKey,
                      child: ScaffoldWithBottomNav(
                          title: AppLocalizations.of(context)?.profile ?? 'fff',
                          child: const Home()));
                },
              ),
              GoRoute(
                path: AppRouterPaths.progress,
                name: AppRouteNames.progress,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                      child: ScaffoldWithBottomNav(
                          title: AppLocalizations.of(context)?.profile ?? '',
                          child: const Progress()));
                },
              ),
              GoRoute(
                  path: AppRouterPaths.profile,
                  name: AppRouteNames.profile,
                  pageBuilder: (context, state) {
                    return NoTransitionPage(
                      key: state.pageKey,
                      child: ScaffoldWithBottomNav(
                          title: AppLocalizations.of(context)?.profile ?? '',
                          child: const Profile()),
                    );
                  },
                  routes: [
                    GoRoute(
                      path: AppRouterPaths.profileEditor,
                      name: AppRouteNames.profileEditor,
                      pageBuilder: (context, state) {
                        return TransitionPage(
                            key: state.pageKey, child: const ProfileEditor());
                      },
                    ),
                  ]),
            ],
          ),
        ],
      );
}

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
