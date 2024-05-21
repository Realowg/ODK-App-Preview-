import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'models/home_dashboard_model.dart';
import 'provider/home_dashboard_provider.dart'; // ignore_for_file: must_be_immutable

class HomeDashboardPage extends StatefulWidget {
  const HomeDashboardPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeDashboardPageState createState() => HomeDashboardPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeDashboardProvider(),
      child: HomeDashboardPage(),
    );
  }
}

class HomeDashboardPageState extends State<HomeDashboardPage> {
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
                Column(
                  children: [
                    _buildFeed(context),
                    SizedBox(height: 8.v),
                    _buildFeed1(context),
                    SizedBox(height: 8.v),
                    _buildFeed2(context)
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
  Widget _buildTip(BuildContext context) {
    return CustomElevatedButton(
      width: 71.h,
      text: "lbl_tip".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 18.adaptSize,
          width: 18.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillErrorContainer,
      onPressed: () {
        onTapTip(context);
      },
    );
  }

  /// Section Widget
  Widget _buildFeed(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        children: [
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
                    top: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "lbl_savannah_nguyen".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgCheckmarkAmber300,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                            margin: EdgeInsets.only(left: 4.h),
                          )
                        ],
                      ),
                      SizedBox(height: 2.v),
                      Row(
                        children: [
                          Text(
                            "lbl_2h".tr,
                            style: CustomTextStyles.bodyMediumBluegray300,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "lbl".tr,
                              style: CustomTextStyles.bodyMediumBluegray300,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGlobe,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                            margin: EdgeInsets.only(left: 5.h),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgNotification,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 12.v),
                )
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            width: 354.h,
            margin: EdgeInsets.only(
              left: 15.h,
              right: 20.h,
            ),
            child: Text(
              "msg_just_whipped_up".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.57,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 280.v,
            width: 390.h,
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 6.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgContrast,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTwitter,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEye,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                ),
                Spacer(),
                _buildTip(context),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmark,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return CustomElevatedButton(
      height: 29.v,
      width: 32.h,
      text: "lbl_3".tr,
      margin: EdgeInsets.only(
        top: 6.v,
        bottom: 7.v,
      ),
      buttonStyle: CustomButtonStyles.fillLightBlue,
      onPressed: () {
        onTapThree(context);
      },
    );
  }

  /// Section Widget
  Widget _buildTip1(BuildContext context) {
    return CustomElevatedButton(
      width: 71.h,
      text: "lbl_tip".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 18.adaptSize,
          width: 18.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillErrorContainer,
      onPressed: () {
        onTapTip1(context);
      },
    );
  }

  /// Section Widget
  Widget _buildFeed1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        children: [
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
                        ImageConstant.imgAvatar07,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "lbl_ronald_richards".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgCheckmarkAmber300,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize,
                                  margin: EdgeInsets.only(left: 4.h),
                                )
                              ],
                            ),
                            SizedBox(height: 3.v),
                            Row(
                              children: [
                                Text(
                                  "lbl_1d".tr,
                                  style: CustomTextStyles.bodyMediumBluegray300,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text(
                                    "lbl".tr,
                                    style:
                                        CustomTextStyles.bodyMediumBluegray300,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGlobe,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize,
                                  margin: EdgeInsets.only(left: 5.h),
                                )
                              ],
                            )
                          ],
                        ),
                        _buildThree(context)
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgNotification,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 12.v,
                    bottom: 12.v,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            width: 339.h,
            margin: EdgeInsets.only(
              left: 16.h,
              right: 35.h,
            ),
            child: Text(
              "msg_exploring_the_beautiful".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.57,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 16.v,
            ),
            decoration: AppDecoration.fillBlack.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgImage280x390,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 103.v),
                CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  padding: EdgeInsets.all(3.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgOverflowMenuGray50,
                  ),
                ),
                SizedBox(height: 71.v),
                Container(
                  height: 8.v,
                  width: 366.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                    child: LinearProgressIndicator(
                      value: 0.67,
                      backgroundColor: appTheme.whiteA700.withOpacity(0.2),
                      valueColor: AlwaysStoppedAnimation<Color>(
                        appTheme.whiteA700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUserGray50,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_00_24_05_30".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgMap,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(left: 4.h),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 6.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgContrast,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTwitter,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEye,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                ),
                Spacer(),
                _buildTip1(context),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmark,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return CustomElevatedButton(
      height: 29.v,
      width: 41.h,
      text: "lbl_10".tr,
      margin: EdgeInsets.symmetric(vertical: 8.v),
      buttonStyle: CustomButtonStyles.fillLightBlue,
      onPressed: () {
        onTapTen(context);
      },
    );
  }

  /// Section Widget
  Widget _buildFeed2(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        children: [
          Row(
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
                      ImageConstant.imgAvatar09,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "lbl_alex_minz".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCheckmarkAmber300,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
                        )
                      ],
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      children: [
                        Text(
                          "lbl_1m".tr,
                          style: CustomTextStyles.bodyMediumBluegray300,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl".tr,
                            style: CustomTextStyles.bodyMediumBluegray300,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGlobe,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          margin: EdgeInsets.only(left: 5.h),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              _buildTen(context),
              CustomImageView(
                imagePath: ImageConstant.imgNotification,
                height: 22.adaptSize,
                width: 22.adaptSize,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 12.v,
                  bottom: 12.v,
                ),
              )
            ],
          ),
          SizedBox(height: 15.v),
          Container(
            width: 352.h,
            margin: EdgeInsets.only(right: 6.h),
            child: Text(
              "msg_early_morning_workout".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.57,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.h),
            padding: EdgeInsets.symmetric(vertical: 16.v),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPlayGray50,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          top: 8.v,
                          bottom: 7.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: SizedBox(
                          height: 39.v,
                          child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            color: appTheme.gray50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: SizedBox(
                          height: 38.v,
                          child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            color: appTheme.gray50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 13.v,
                          bottom: 14.v,
                        ),
                        child: SizedBox(
                          child: Divider(
                            color: appTheme.gray50,
                            indent: 8.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: SizedBox(
                          height: 37.v,
                          child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            color: appTheme.gray50,
                            endIndent: 2.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: SizedBox(
                          height: 38.v,
                          child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            color: appTheme.gray50,
                            indent: 10.h,
                            endIndent: 11.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: SizedBox(
                          height: 38.v,
                          child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            color: appTheme.gray50,
                            indent: 5.h,
                            endIndent: 6.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: SizedBox(
                          height: 37.v,
                          child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            color: appTheme.gray50,
                            endIndent: 2.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: SizedBox(
                          height: 38.v,
                          child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            color: appTheme.gray50,
                            indent: 4.h,
                            endIndent: 4.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: SizedBox(
                          height: 38.v,
                          child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            color: appTheme.gray50,
                            indent: 6.h,
                            endIndent: 6.h,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 38.v,
                            child: VerticalDivider(
                              width: 4.h,
                              thickness: 4.v,
                              indent: 11.h,
                              endIndent: 12.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.v),
                          child: SizedBox(
                            child: Divider(
                              indent: 8.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 12.v,
                            bottom: 13.v,
                          ),
                          child: SizedBox(
                            child: Divider(
                              indent: 8.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 38.v,
                            child: VerticalDivider(
                              width: 4.h,
                              thickness: 4.v,
                              indent: 5.h,
                              endIndent: 6.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 38.v,
                            child: VerticalDivider(
                              width: 4.h,
                              thickness: 4.v,
                              indent: 3.h,
                              endIndent: 3.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 37.v,
                            child: VerticalDivider(
                              width: 4.h,
                              thickness: 4.v,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 38.v,
                            child: VerticalDivider(
                              width: 4.h,
                              thickness: 4.v,
                              indent: 5.h,
                              endIndent: 5.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.v),
                          child: SizedBox(
                            child: Divider(
                              indent: 8.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 36.v,
                            child: VerticalDivider(
                              width: 4.h,
                              thickness: 4.v,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 38.v,
                            child: VerticalDivider(
                              width: 4.h,
                              thickness: 4.v,
                              indent: 7.h,
                              endIndent: 7.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 38.v,
                            child: VerticalDivider(
                              width: 4.h,
                              thickness: 4.v,
                              indent: 4.h,
                              endIndent: 5.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 38.v,
                            child: VerticalDivider(
                              width: 4.h,
                              thickness: 4.v,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 38.v,
                            child: VerticalDivider(
                              width: 4.h,
                              thickness: 4.v,
                              indent: 10.h,
                              endIndent: 10.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.v),
                          child: SizedBox(
                            child: Divider(
                              indent: 8.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 37.v,
                            child: VerticalDivider(
                              width: 4.h,
                              thickness: 4.v,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 12.v,
                            bottom: 13.v,
                          ),
                          child: SizedBox(
                            child: Divider(
                              indent: 8.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: SizedBox(
                            height: 38.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              indent: 9.h,
                              endIndent: 10.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.v),
                          child: SizedBox(
                            child: Divider(
                              indent: 26.h,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: SizedBox(
                          height: 38.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            indent: 5.h,
                            endIndent: 6.h,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 3.v,
                            bottom: 5.v,
                          ),
                          child: SliderTheme(
                            data: SliderThemeData(
                              trackShape: RoundedRectSliderTrackShape(),
                              activeTrackColor: theme.colorScheme.primary,
                              inactiveTrackColor: appTheme.blueGray900,
                              thumbColor: theme.colorScheme.primary,
                              thumbShape: RoundSliderThumbShape(),
                            ),
                            child: Slider(
                              value: 52.88,
                              min: 0.0,
                              max: 100.0,
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Text(
                          "lbl_1x".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFavorite,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 6.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgTwitter,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  onTapCounters(context);
                },
                child: Container(
                  width: 71.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.fillErrorContainer.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder18,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(
                          "lbl_tip".tr,
                          style: CustomTextStyles.labelLargeGray50,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBookmark,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  onTapTip(BuildContext context) {}
  onTapThree(BuildContext context) {}
  onTapTip1(BuildContext context) {}
  onTapTen(BuildContext context) {}
  onTapCounters(BuildContext context) {}
}
