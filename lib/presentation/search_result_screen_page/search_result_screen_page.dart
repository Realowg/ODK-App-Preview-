import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'models/community_item_model.dart';
import 'models/feed_item_model.dart';
import 'models/search_result_screen_model.dart';
import 'models/userprofile_item_model.dart';
import 'provider/search_result_screen_provider.dart';
import 'widgets/community_item_widget.dart';
import 'widgets/feed_item_widget.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

class SearchResultScreenPage extends StatefulWidget {
  const SearchResultScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultScreenPageState createState() => SearchResultScreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchResultScreenProvider(),
      child: SearchResultScreenPage(),
    );
  }
}

class SearchResultScreenPageState extends State<SearchResultScreenPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 19.v),
                Column(
                  children: [
                    _buildColumnmostpopul(context),
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: _buildRowexplore(
                        context,
                        explore: "lbl_peoples".tr,
                        viewallOne: "lbl_view_all".tr,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    _buildUserprofile(context),
                    SizedBox(height: 17.v),
                    _buildColumnexplore(context),
                    SizedBox(height: 16.v),
                    SizedBox(
                      height: 168.v,
                      width: double.maxFinite,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnmostpopul(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl_most_popular".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
        SizedBox(height: 16.v),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 46.adaptSize,
                width: 46.adaptSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    23.h,
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgAvatar0346x46,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 4.v,
                  bottom: 4.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_savannah_nguyen".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "lbl_499".tr,
                      style: CustomTextStyles.labelLargePrimary,
                    )
                  ],
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                height: 38.v,
                width: 120.h,
                text: "lbl_subscribe".tr,
                margin: EdgeInsets.symmetric(vertical: 4.v),
                buttonTextStyle: CustomTextStyles.titleSmallIndigo50,
              )
            ],
          ),
        ),
        SizedBox(height: 16.v),
        SizedBox(
          height: 272.v,
          child: Consumer<SearchResultScreenProvider>(
            builder: (context, provider, child) {
              return ListView.separated(
                padding: EdgeInsets.only(left: 16.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 16.h,
                  );
                },
                itemCount:
                    provider.searchResultScreenModelObj.feedItemList.length,
                itemBuilder: (context, index) {
                  FeedItemModel model =
                      provider.searchResultScreenModelObj.feedItemList[index];
                  return FeedItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
        SizedBox(height: 14.v),
        Divider(
          color: appTheme.blueGray900,
          indent: 16.h,
          endIndent: 16.h,
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildUserprofile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Consumer<SearchResultScreenProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0.v),
                child: SizedBox(
                  width: 358.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.blueGray900,
                  ),
                ),
              );
            },
            itemCount:
                provider.searchResultScreenModelObj.userprofileItemList.length,
            itemBuilder: (context, index) {
              UserprofileItemModel model = provider
                  .searchResultScreenModelObj.userprofileItemList[index];
              return UserprofileItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnexplore(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: _buildRowexplore(
            context,
            explore: "msg_explore_community".tr,
            viewallOne: "lbl_view_all".tr,
          ),
        ),
        SizedBox(height: 17.v),
        SizedBox(
          height: 213.v,
          child: Consumer<SearchResultScreenProvider>(
            builder: (context, provider, child) {
              return ListView.separated(
                padding: EdgeInsets.only(left: 16.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 16.h,
                  );
                },
                itemCount: provider
                    .searchResultScreenModelObj.communityItemList.length,
                itemBuilder: (context, index) {
                  CommunityItemModel model = provider
                      .searchResultScreenModelObj.communityItemList[index];
                  return CommunityItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildRowexplore(
    BuildContext context, {
    required String explore,
    required String viewallOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          explore,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.gray50,
          ),
        ),
        Text(
          viewallOne,
          style: CustomTextStyles.titleSmallPrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        )
      ],
    );
  }
}
