import '../../../core/app_export.dart';

/// This class is used in the [community_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CommunityItemModel {
  CommunityItemModel(
      {this.userImage, this.username, this.memberCount, this.id}) {
    userImage = userImage ?? ImageConstant.imgImage134x134;
    username = username ??
        "Star Cawley, Grisel Knobel, Scarlet Gable, Marceline Claar";
    memberCount = memberCount ?? "12K members";
    id = id ?? "";
  }

  String? userImage;

  String? username;

  String? memberCount;

  String? id;
}
