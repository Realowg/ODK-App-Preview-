import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_dashboard_model.dart';

/// A provider class for the HomeDashboardPage.
///
/// This provider manages the state of the HomeDashboardPage, including the
/// current homeDashboardModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomeDashboardProvider extends ChangeNotifier {
  HomeDashboardModel homeDashboardModelObj = HomeDashboardModel();

  @override
  void dispose() {
    super.dispose();
  }
}
