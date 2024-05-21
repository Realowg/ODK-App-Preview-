import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/profile_create_screen/profile_create_screen.dart';

class AppRoutes {
  static const String profileCreateScreen = '/profile_create_screen';

  static const String homeDashboardPage = '/home_dashboard_page';

  static const String searchResultScreenPage = '/search_result_screen_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        profileCreateScreen: ProfileCreateScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: ProfileCreateScreen.builder
      };
}
