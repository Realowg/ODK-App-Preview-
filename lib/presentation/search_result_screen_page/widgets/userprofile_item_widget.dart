import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../models/userprofile_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(this.userprofileItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
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
                ImageConstant.imgAvatar02,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 2.v,
            bottom: 3.v,
          ),
          child: Column(
            children: [
              Text(
                userprofileItemModelObj.jacobjones!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 5.v),
              Text(
                userprofileItemModelObj.ksubscribing!,
                style: theme.textTheme.bodySmall,
              )
            ],
          ),
        ),
        Spacer(),
        _buildUnsubscribe(context)
      ],
    );
  }

  /// Section Widget
  Widget _buildUnsubscribe(BuildContext context) {
    return CustomOutlinedButton(
      width: 120.h,
      text: "lbl_unsubscribe".tr,
      margin: EdgeInsets.only(bottom: 8.v),
    );
  }
}
