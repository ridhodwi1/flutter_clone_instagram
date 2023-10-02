import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram/app/modules/home/presentation/pages/home.dart';
import 'package:instagram/app/modules/main/presentation/pages/main_screen.dart';
import 'package:instagram/app/modules/posting/presentation/pages/postingan_screen.dart';
import 'package:instagram/app/modules/profile/presentation/pages/profile_screen.dart';
import 'package:instagram/app/modules/reels/presentation/pages/reels_screen.dart';
import 'package:instagram/app/modules/search/presentation/pages/seacrch_screen.dart';

class MyRouter {
  static final rootNavigtorKey = GlobalKey<NavigatorState>();

  static final _rootNavigtorKey = GlobalKey<NavigatorState>();
  static router() {
    return GoRouter(initialLocation: '/home', routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          // Return the widget that implements the custom shell (e.g a BottomNavigationBar).
          // The [StatefulNavigationShell] is passed to be able to navigate to other branches in a stateful way.
          return MainScreen(navigationShell);
        },
        branches: [
          // The route branch for the 1º Tab
          StatefulShellBranch(
            navigatorKey: rootNavigtorKey,
            // Add this branch routes
            // each routes with its sub routes if available e.g feed/uuid/details
            routes: <RouteBase>[
              GoRoute(
                path: '/home',
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            // Add this branch routes
            // each routes with its sub routes if available e.g feed/uuid/details
            routes: <RouteBase>[
              GoRoute(
                path: '/search',
                builder: (context, state) => const SearchScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _rootNavigtorKey,
            // Add this branch routes
            // each routes with its sub routes if available e.g feed/uuid/details
            routes: <RouteBase>[
              GoRoute(
                path: '/postingan',
                builder: (context, state) => const PostinganScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            // Add this branch routes
            // each routes with its sub routes if available e.g feed/uuid/details
            routes: <RouteBase>[
              GoRoute(
                path: '/reels',
                builder: (context, state) => const ReelsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            // Add this branch routes
            // each routes with its sub routes if available e.g feed/uuid/details
            routes: <RouteBase>[
              GoRoute(
                  path: '/profile',
                  builder: (context, state) => const ProfileScreen()),
            ],
          ),
          // The route branch for 2º Tab
        ],
      ),
    ]);
  }
}
