// import 'dart:io';
// import 'package:chibi/core/router/app_routes.dart';
// import 'package:chibi/core/router/transitons.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';


// final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// class AppRouter {
//   final bool isTesting;

//   AppRouter({required this.isTesting});

//   GoRouter router([String? initialLocation]) => GoRouter(
//         initialLocation: initialLocation ?? AppRouterPaths.home,
//         navigatorKey: navigatorKey,
//         debugLogDiagnostics: false,

//         routes: [
//           ShellRoute(
//             pageBuilder: (context, state, child) => TransitionPage(
//               key: state.pageKey,
//               child: Scaffold(
//                 body: child,
//               ),
//             ),
//             routes: [
//               GoRoute(
//                   path: AppRouterPaths.live,
//                   name: AppRouterPaths.live,
//                   pageBuilder: (context, state) {
//                     int selectedTab = 1;
//                     if (state.extra != null) {
//                       final extraMap = state.extra as Map<String, int>;
//                       if (extraMap['selected_tab'] != null) {
//                         selectedTab = extraMap['selected_tab'] as int;
//                       }
//                     }
//                     return TransitionPage(
//                         key: state.pageKey,
//                         child: Live(
//                           isTesting: isTesting,
//                           selectedTab: selectedTab,
//                         ));
//                   },
//                   routes: [
//                     GoRoute(
//                         path: AppRouterPaths.biddingLivestreamFullscreen,
//                         name: AppRouteNames.biddingLivestreamFullscreen,
//                         pageBuilder: (context, state) {
//                           String orderContext = '';
//                           String? orderContextId;
//                           AppProductDTO? dto;
//                           VideoPlayerController? videoController;

//                           if (state.extra != null) {
//                             videoController =
//                                 (state.extra as Map)['videoController']
//                                     as VideoPlayerController;
//                             dto = (state.extra as Map)['dto'] as AppProductDTO;
//                           }

//                           if (state.uri.queryParameters['be_context'] != null) {
//                             orderContext =
//                                 state.uri.queryParameters['be_context']!;
//                           }
//                           if (state.uri.queryParameters['be_context_id'] !=
//                               null) {
//                             orderContextId =
//                                 state.uri.queryParameters['be_context_id']!;
//                           }
//                           logger.d('!! set orderContext 1: $orderContext');

//                           return isTesting
//                               ? TransitionPage(
//                                   key: state.pageKey,
//                                   child: LiveLivestreamFullscreen(
//                                     isTesting: isTesting,
//                                     orderContext: '',
//                                     productDTO: AppProductDTO(),
//                                   ))
//                               : TransitionPage(
//                                   key: state.pageKey,
//                                   child: LiveLivestreamFullscreen(
//                                       videoPlayerController: videoController!,
//                                       productDTO: dto ?? AppProductDTO(),
//                                       orderContext: orderContext,
//                                       orderContextId: orderContextId));
//                         }),
//                     GoRoute(
//                       path: AppRouterPaths.policyApproval,
//                       name: AppRouteNames.policyApproval,
//                       pageBuilder: (context, state) => SlideTransitionPage(
//                           key: state.pageKey, child: const PolicyApproval()),
//                     ),
//                     GoRoute(
//                       path: AppRouterPaths.recentGames,
//                       name: AppRouteNames.recentGames,
//                       pageBuilder: (context, state) => SlideTransitionPage(
//                           key: state.pageKey, child: RecentGames()),
//                       routes: [
//                         DetailsRoute(
//                             isTesting: isTesting,
//                             routePath: AppRouterPaths.details,
//                             routeName: AppRouteNames.detailsRecentGames,
//                             routeRoutes: [
//                               GoRoute(
//                                 path: AppRouterPaths.recentGames,
//                                 name: AppRouteNames.recentGamesDetails,
//                                 pageBuilder: (context, state) =>
//                                     SlideTransitionPage(
//                                         key: state.pageKey,
//                                         child: RecentGames()),
//                               )
//                             ]),
//                         GoRoute(
//                             path: AppRouterPaths.searchResults,
//                             name: AppRouteNames.searchResults,
//                             pageBuilder: (context, state) =>
//                                 SlideTransitionPage(
//                                     key: state.pageKey,
//                                     child: RecentGamesSearch())),
//                       ],
//                     )
//                   ]),
//               GoRoute(
//                   path: AppRouterPaths.home,
//                   name: AppRouterPaths.home,
//                   pageBuilder: (context, state) => TransitionPage(
//                       key: state.pageKey,
//                       child: Home(
//                           // isTesting: isTesting,
//                           )),
//                   routes: [
//                     DetailsRoute(
//                       isTesting: isTesting,
//                       routePath: AppRouterPaths.details,
//                       routeName: AppRouteNames.details,
//                       routeRoutes: [
//                         GoRoute(
//                             path: AppRouterPaths.fullscreen,
//                             name: AppRouteNames.fullscreen,
//                             pageBuilder: (context, state) {
//                               MediaDTO? mediaDto;
//                               String orderContext = '';
//                               String? orderContextId;
//                               AppProductDTO? dto;
//                               VideoPlayerController? videoController;
//                               SubtitleController? subtitleController;

//                               if (state.extra != null) {
//                                 mediaDto = (state.extra as Map)['mediaDTO']
//                                     as MediaDTO;
//                                 videoController =
//                                     (state.extra as Map)['videoController']
//                                         as VideoPlayerController;
//                                 subtitleController =
//                                     (state.extra as Map)['subtitleController']
//                                         as SubtitleController;
//                                 dto = (state.extra as Map)['dto']
//                                     as AppProductDTO;
//                               }

//                               if (state.uri.queryParameters['be_context'] !=
//                                   null) {
//                                 orderContext =
//                                     state.uri.queryParameters['be_context']!;
//                               }
//                               if (state.uri.queryParameters['be_context_id'] !=
//                                   null) {
//                                 orderContextId =
//                                     state.uri.queryParameters['be_context_id']!;
//                               }
//                               logger.d('!! set orderContext 1: $orderContext');

//                               return isTesting
//                                   ? TransitionPage(
//                                       key: state.pageKey,
//                                       child: ProductDetailsVideoFullscreen(
//                                         isTesting: isTesting,
//                                         mediaDto: MediaDTO(),
//                                         orderContext: '',
//                                         productDTO: AppProductDTO(),
//                                       ))
//                                   : TransitionPage(
//                                       key: state.pageKey,
//                                       child: ProductDetailsVideoFullscreen(
//                                           videoPlayerController:
//                                               videoController!,
//                                           subtitleController:
//                                               subtitleController,
//                                           mediaDto: mediaDto!,
//                                           productDTO: dto ?? AppProductDTO(),
//                                           orderContext: orderContext,
//                                           orderContextId: orderContextId));
//                             }),
//                       ],
//                     ),
//                     DetailsRoute(
//                         isTesting: isTesting,
//                         routePath: AppRouterPaths.details,
//                         routeName: AppRouteNames.detailsProductList,
//                         routeRoutes: [
//                           GoRoute(
//                               path: AppRouterPaths.similarProducts,
//                               name: AppRouterPaths.similarProducts,
//                               pageBuilder: (context, state) =>
//                                   SlideTransitionPage(
//                                       key: state.pageKey,
//                                       child: const SimilarProductsView(
//                                           // isTesting: isTesting,
//                                           ))),
//                         ])
//                   ]),
//               GoRoute(
//                   path: AppRouterPaths.shop,
//                   name: AppRouterPaths.shop,
//                   pageBuilder: (context, state) => TransitionPage(
//                       key: state.pageKey,
//                       child: Shop(
//                         isTesting: isTesting,
//                       ))),
//               GoRoute(
//                 path: AppRouterPaths.shoppingCart,
//                 pageBuilder: (context, state) =>
//                     TransitionPage(key: state.pageKey, child: ShoppingCart()),
//               ),
//               GoRoute(
//                 path: AppRouterPaths.more,
//                 pageBuilder: (context, state) => TransitionPage(
//                     key: state.pageKey,
//                     child: More(
//                       isTesting: isTesting,
//                     )),
//                 routes: [
//                   GoRoute(
//                     path: AppRouterPaths.policyApproval,
//                     name: AppRouteNames.morepolicyApproval,
//                     pageBuilder: (context, state) => SlideTransitionPage(
//                         key: state.pageKey, child: const PolicyApproval()),
//                   ),
//                   GoRoute(
//                     path: AppRouterPaths.dataPrivacy,
//                     name: AppRouteNames.moreDataPrivacy,
//                     pageBuilder: (context, state) => SlideTransitionPage(
//                         key: state.pageKey,
//                         child: PrivacyPolicy(
//                           isTesting: isTesting,
//                         )),
//                   ),
//                   GoRoute(
//                     path: AppRouterPaths.devSettings,
//                     name: AppRouteNames.devSettings,
//                     pageBuilder: (context, state) => SlideTransitionPage(
//                         key: state.pageKey,
//                         child: DevSettings(
//                           isTesting: isTesting,
//                         )),
//                   ),
//                   GoRoute(
//                     path: AppRouterPaths.orderHistory,
//                     name: AppRouteNames.orderHistory,
//                     pageBuilder: (context, state) => SlideTransitionPage(
//                         key: state.pageKey, child: OrderHistory()),
//                     routes: [
//                       GoRoute(
//                         path: AppRouterPaths.orderHistoryDetails,
//                         name: AppRouteNames.orderHistoryDetails,
//                         pageBuilder: (context, state) {
//                           return isTesting
//                               ? SlideTransitionPage(
//                                   key: state.pageKey,
//                                   child: OrderHistoryDetails(
//                                     isTesting: isTesting,
//                                   ))
//                               : SlideTransitionPage(
//                                   key: state.pageKey,
//                                   child: OrderHistoryDetails(
//                                     isTesting: isTesting,
//                                   ));
//                         },
//                       ),
//                     ],
//                   ),
//                   GoRoute(
//                     path: AppRouterPaths.accountSettings,
//                     name: AppRouteNames.accountSettings,
//                     pageBuilder: (context, state) => SlideTransitionPage(
//                       key: state.pageKey,
//                       child: const AccountSettings(),
//                     ),
//                   ),
//                   GoRoute(
//                       path: AppRouterPaths.wishlist,
//                       name: AppRouteNames.wishlist,
//                       pageBuilder: (context, state) => SlideTransitionPage(
//                             key: state.pageKey,
//                             child: Wishlist(),
//                           ),
//                       routes: [
//                         DetailsRoute(
//                           isTesting: isTesting,
//                           routePath: AppRouterPaths.details,
//                           routeName: AppRouteNames.detailsWishList,
//                         )
//                       ]),
//                   GoRoute(
//                     path: AppRouterPaths.registration,
//                     name: AppRouteNames.registration,
//                     pageBuilder: (context, state) {
//                       String? productId;
//                       String? orderContext;
//                       String? orderContextId;
//                       BidResponse? bidResponse;

//                       if (state.extra != null) {
//                         bidResponse = state.extra as BidResponse;
//                       }
//                       if (state.uri.queryParameters['product_id'] != null) {
//                         productId = state.uri.queryParameters['product_id'];
//                       }

//                       if (state.uri.queryParameters['be_context'] != null) {
//                         orderContext = state.uri.queryParameters['be_context']!;
//                       }
//                       if (state.uri.queryParameters['be_context_id'] != null) {
//                         orderContextId =
//                             state.uri.queryParameters['be_context_id']!;
//                       }

//                       return SlideTransitionPage(
//                           key: state.pageKey,
//                           child: Registration(
//                             selectedID: productId,
//                             isTesting: isTesting,
//                             orderContext: orderContext,
//                             orderContextId: orderContextId,
//                             bidResponse: bidResponse,
//                           ));
//                     },
//                     routes: [
//                       GoRoute(
//                         path: AppRouterPaths.code,
//                         name: AppRouteNames.code,
//                         pageBuilder: (context, state) => SlideTransitionPage(
//                             key: state.pageKey,
//                             child: CodeConfirmation(
//                               isTesting: isTesting,
//                             )),
//                         routes: [
//                           GoRoute(
//                             path: AppRouterPaths.welcome,
//                             name: AppRouteNames.welcome,
//                             pageBuilder: (context, state) => TransitionPage(
//                                 key: state.pageKey,
//                                 child: RegistrationSuccess(
//                                   isTesting: isTesting,
//                                 )),
//                             routes: [
//                               DetailsRoute(
//                                 isTesting: isTesting,
//                                 routePath: AppRouterPaths.details,
//                                 routeName: AppRouteNames.detailsRegistration,
//                               ),
//                               GoRoute(
//                                 path: AppRouterPaths.orderHistory,
//                                 name: AppRouteNames.orderHistoryAfterLogin,
//                                 pageBuilder: (context, state) =>
//                                     SlideTransitionPage(
//                                         key: state.pageKey,
//                                         child: OrderHistory()),
//                                 routes: [
//                                   GoRoute(
//                                       path: AppRouterPaths.moreAfterLogin,
//                                       name: AppRouteNames.moreAfterLogin,
//                                       pageBuilder: (context, state) {
//                                         return ReverseSlideTransitionPage(
//                                             key: state.pageKey,
//                                             child: More(
//                                               isTesting: isTesting,
//                                             ));
//                                       })
//                                 ],
//                               ),
//                             ],
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                   GoRoute(
//                       path: AppRouterPaths.accessories,
//                       name: AppRouteNames.accessories,
//                       pageBuilder: (context, state) => SlideTransitionPage(
//                           key: state.pageKey,
//                           child: Accessories(
//                             isTesting: isTesting,
//                           )),
//                       routes: [
//                         DetailsRoute(
//                           isTesting: isTesting,
//                           routePath: AppRouterPaths.details,
//                           routeName: AppRouteNames.detailsAccessories,
//                         )
//                       ]),
//                   GoRoute(
//                       path: AppRouterPaths.ringsizer,
//                       name: AppRouteNames.ringsizer,
//                       pageBuilder: (context, state) => SlideTransitionPage(
//                           key: state.pageKey,
//                           child: Ringsizer(isTesting: isTesting)),
//                       routes: [
//                         GoRoute(
//                           path: AppRouterPaths.ringsizeCalibration,
//                           name: AppRouteNames.ringsizeCalibration,
//                           pageBuilder: (context, state) => SlideTransitionPage(
//                               key: state.pageKey,
//                               child: RingsizerCalibrator(isTesting: isTesting)),
//                         ),
//                         GoRoute(
//                           path: AppRouterPaths.ringsizeCoinScale,
//                           name: AppRouteNames.ringsizeCoinScale,
//                           pageBuilder: (context, state) => SlideTransitionPage(
//                               key: state.pageKey,
//                               child: RingsizerCoinscaler(isTesting: isTesting)),
//                         ),
//                       ]),
//                   GoRoute(
//                     path: AppRouterPaths.programm,
//                     name: AppRouteNames.programm,
//                     pageBuilder: (context, state) => SlideTransitionPage(
//                         key: state.pageKey,
//                         child: ShowGuide(isTesting: isTesting)),
//                   ),
//                   GoRoute(
//                     path: AppRouterPaths.appSettings,
//                     name: AppRouteNames.appSettings,
//                     pageBuilder: (context, state) => SlideTransitionPage(
//                         key: state.pageKey, child: AppSettings()),
//                   ),
//                   GoRoute(
//                     path: AppRouterPaths.imprint,
//                     name: AppRouteNames.imprint,
//                     pageBuilder: (context, state) => SlideTransitionPage(
//                         key: state.pageKey,
//                         child: Imprint(
//                           isTesting: isTesting,
//                         )),
//                   ),
//                   GoRoute(
//                     path: AppRouterPaths.agb,
//                     name: AppRouteNames.agb,
//                     pageBuilder: (context, state) => SlideTransitionPage(
//                         key: state.pageKey,
//                         child: TermsAndConditions(
//                           isTesting: isTesting,
//                         )),
//                   ),
//                   GoRoute(
//                     path: AppRouterPaths.dataPrivacy,
//                     name: AppRouteNames.dataPrivacy,
//                     pageBuilder: (context, state) => SlideTransitionPage(
//                         key: state.pageKey,
//                         child: PrivacyPolicy(
//                           isTesting: isTesting,
//                         )),
//                   ),
//                   GoRoute(
//                     path: AppRouterPaths.policySettings,
//                     name: AppRouteNames.policySettings,
//                     pageBuilder: (context, state) => SlideTransitionPage(
//                         key: state.pageKey,
//                         child: PolicySettingsPage(isTesting: isTesting)),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ],
//       );
// }

// final appRouter = AppRouter(isTesting: false).router();

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

// extension GoRouterLocation on GoRouter {
//   String get location {
//     final RouteMatch lastMatch =
//         Platform.environment.containsKey('FLUTTER_TEST')
//             ? RouteMatch(
//                 route: GoRoute(
//                     path: AppRouterPaths.home,
//                     name: AppRouteNames.home,
//                     pageBuilder: (context, state) =>
//                         SlideTransitionPage(key: state.pageKey, child: Home())),
//                 pageKey: const ValueKey('routeTesting'),
//                 matchedLocation: '')
//             : routerDelegate.currentConfiguration.last;
//     final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
//         ? lastMatch.matches
//         : routerDelegate.currentConfiguration;
//     return matchList.uri.toString();
//   }
// }
