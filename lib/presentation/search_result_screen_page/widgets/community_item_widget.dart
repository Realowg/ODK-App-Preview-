import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/community_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CommunityItemWidget extends StatelessWidget {
  CommunityItemWidget(this.communityItemModelObj, {Key? key})
      : super(
          key: key,
        );

  CommunityItemModel communityItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 134.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: communityItemModelObj.userImage!,
            height: 134.adaptSize,
            width: 134.adaptSize,
          ),
          SizedBox(height: 7.v),
          Text(
            communityItemModelObj.username!,
            style: CustomTextStyles.titleMediumWhiteA700,
          ),
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: ImageConstant.imgImageOnerrorcontainer,
            height: 28.v,
            width: 134.h,
          ),
          SizedBox(height: 2.v),
          Text(
            communityItemModelObj.memberCount!,
            style: CustomTextStyles.bodySmallBluegray500,
          )
        ],
      ),
    );
  }
}
