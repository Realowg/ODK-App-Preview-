import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/feed_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FeedItemWidget extends StatelessWidget {
  FeedItemWidget(this.feedItemModelObj, {Key? key})
      : super(
          key: key,
        );

  FeedItemModel feedItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 283.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: feedItemModelObj.image!,
            height: 174.v,
            width: 283.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            width: 277.h,
            margin: EdgeInsets.only(right: 6.h),
            child: Text(
              feedItemModelObj.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallIndigo50.copyWith(
                height: 1.57,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          SizedBox(
            width: 243.h,
            child: Text(
              feedItemModelObj.hashtags!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallBluegray500.copyWith(
                height: 1.67,
              ),
            ),
          )
        ],
      ),
    );
  }
}
