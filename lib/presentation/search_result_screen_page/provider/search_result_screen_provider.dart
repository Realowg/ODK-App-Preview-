import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/community_item_model.dart';
import '../models/feed_item_model.dart';
import '../models/search_result_screen_model.dart';
import '../models/userprofile_item_model.dart';

/// A provider class for the SearchResultScreenPage.
///
/// This provider manages the state of the SearchResultScreenPage, including the
/// current searchResultScreenModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SearchResultScreenProvider extends ChangeNotifier {
  SearchResultScreenModel searchResultScreenModelObj =
      SearchResultScreenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
