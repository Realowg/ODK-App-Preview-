import '../../../core/app_export.dart';

/// This class is used in the [feed_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FeedItemModel {
  FeedItemModel({this.image, this.title, this.hashtags, this.id}) {
    image = image ?? ImageConstant.imgImage174x283;
    title = title ??
        "Escape to the serene beaches of Dumas for a relaxing weekend getaway!";
    hashtags = hashtags ??
        "#WeekendVibes #DumasBeach #SuratTourism@surat_heritage#Fashion";
    id = id ?? "";
  }

  String? image;

  String? title;

  String? hashtags;

  String? id;
}
