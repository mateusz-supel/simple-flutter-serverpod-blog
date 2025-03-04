import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flutter/ui/screens/home/home_screen.dart';
import 'package:flutter_flutter/ui/screens/main_screen.dart';
import 'package:flutter_flutter/ui/screens/playground/playground_screen.dart';
import 'package:flutter_flutter/ui/widgets/app_bar_widget.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/blog',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainScreen(child: child);
      },
      routes: [
        GoRoute(
          path: '/blog',
          pageBuilder: (context, state) => NoTransitionPage(
            child: HomeScreen(),
          ),
        ),
        GoRoute(
          path: '/playground',
          pageBuilder: (context, state) => NoTransitionPage(
            child: PlaygroundScreen(),
          ),
        ),
      ],
    ),
  ],
);
