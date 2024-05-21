import '../../../core/app_export.dart';
import 'community_item_model.dart';
import 'feed_item_model.dart';
import 'userprofile_item_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SearchResultScreenModel {
  List<FeedItemModel> feedItemList = [
    FeedItemModel(
        image: ImageConstant.imgImage174x283,
        title:
            "Escape to the serene beaches of Dumas for a relaxing weekend getaway!",
        hashtags:
            "#WeekendVibes #DumasBeach #SuratTourism@surat_heritage#Fashion"),
    FeedItemModel(
        image: ImageConstant.imgImage1,
        title:
            "Take a trip back in time and explore Surat's historical monuments!",
        hashtags:
            "#SuratHistory #HeritageSites #India  #WeekendVibes #DumasBeach #SuratTourism")
  ];

  List<UserprofileItemModel> userprofileItemList = [
    UserprofileItemModel(
        jacobjones: "Jacob Jones", ksubscribing: "80K Subscribing"),
    UserprofileItemModel(jacobjones: "Leslie Alexander", ksubscribing: "\$499"),
    UserprofileItemModel(
        jacobjones: "Kathryn Murphy", ksubscribing: "90K Subscribing")
  ];

  List<CommunityItemModel> communityItemList = [
    CommunityItemModel(
        userImage: ImageConstant.imgImage134x134,
        username: "Star Cawley, Grisel Knobel, Scarlet Gable, Marceline Claar",
        memberCount: "12K members"),
    CommunityItemModel(
        userImage: ImageConstant.imgImage2,
        username: "Tiesha Kyle, Magda Ronquillo",
        memberCount: "800 members"),
    CommunityItemModel(
        userImage: ImageConstant.imgImage3,
        username: "Anisa Sala",
        memberCount: "124K members")
  ];
}
