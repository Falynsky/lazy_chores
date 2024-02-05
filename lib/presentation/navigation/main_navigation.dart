import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:lazy_chores/presentation/page/cashed_test/cached_test.dart';
import 'package:lazy_chores/presentation/page/home_screen/home_screen.dart';
import 'package:lazy_chores/presentation/page/pomodoro/pomodoro_page.dart';
import 'package:lazy_chores/utils/exports.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  final _rootKey = GlobalKey<NavigatorState>(debugLabel: 'Root');
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      builder: (context, child) {
        Intl.defaultLocale = Localizations.localeOf(context).languageCode;
        return child ?? const SizedBox.shrink();
      },
      key: _rootKey,
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (_, __) => const HomeScreen(),
          ),
          GoRoute(
            path: '/pomodoro',
            builder: (_, __) => const PomodoroPage(),
          ),
          GoRoute(
            path: '/cached_test',
            builder: (_, __) => const CachedPage(),
          ),
        ],
      ),
    );
  }
}
