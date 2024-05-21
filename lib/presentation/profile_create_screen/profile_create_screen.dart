import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'models/profile_create_model.dart';
import 'provider/profile_create_provider.dart';

class ProfileCreateScreen extends StatefulWidget {
  const ProfileCreateScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileCreateScreenState createState() => ProfileCreateScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileCreateProvider(),
      child: ProfileCreateScreen(),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfileCreateScreenState extends State<ProfileCreateScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 32.v,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 112.adaptSize,
                    width: 112.adaptSize,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgAvatar06,
                          height: 112.adaptSize,
                          width: 112.adaptSize,
                          radius: BorderRadius.circular(
                            56.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.outlineGray,
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgEdit,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25.v),
                  _buildInput(context),
                  SizedBox(height: 22.v),
                  _buildInput1(context),
                  SizedBox(height: 21.v),
                  _buildInput2(context),
                  SizedBox(height: 21.v),
                  _buildInput3(context),
                  SizedBox(height: 72.v),
                  CustomElevatedButton(
                    height: 52.v,
                    text: "lbl_save_details".tr,
                    buttonTextStyle: CustomTextStyles.titleMediumSemiBold,
                    onPressed: () {
                      onTapSavedetails(context);
                    },
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(left: 16.h),
        onTap: () {
          onTapArrowdownone(context);
        },
      ),
      title: AppbarTitle(
        text: "lbl_create_profile".tr,
        margin: EdgeInsets.only(left: 6.h),
      ),
      actions: [
        AppbarSubtitle(
          text: "lbl_skip".tr,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 3.v,
            right: 16.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_full_name".tr,
          style: CustomTextStyles.bodyMediumWhiteA700,
        ),
        SizedBox(height: 6.v),
        Selector<ProfileCreateProvider, TextEditingController?>(
          selector: (context, provider) => provider.fullNameController,
          builder: (context, fullNameController, child) {
            return CustomTextFormField(
              controller: fullNameController,
              hintText: "lbl_bessie_cooper".tr,
              prefix: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 16.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 56.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              filled: true,
              fillColor: appTheme.gray900,
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildInput1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_user_name".tr,
          style: CustomTextStyles.bodyMediumWhiteA700,
        ),
        SizedBox(height: 5.v),
        Selector<ProfileCreateProvider, TextEditingController?>(
          selector: (context, provider) => provider.userNameController,
          builder: (context, userNameController, child) {
            return CustomTextFormField(
              controller: userNameController,
              hintText: "lbl_sandra25".tr,
              prefix: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 16.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 56.v,
              ),
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 16.v, 12.h, 16.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 56.v,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 18.v),
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              filled: true,
              fillColor: appTheme.gray900,
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildInput2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email_address".tr,
          style: CustomTextStyles.bodyMediumWhiteA700,
        ),
        SizedBox(height: 6.v),
        Selector<ProfileCreateProvider, TextEditingController?>(
          selector: (context, provider) => provider.emailController,
          builder: (context, emailController, child) {
            return CustomTextFormField(
              controller: emailController,
              hintText: "msg_odekauser123_gmail_com".tr,
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 16.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEnvelopesimple,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 56.v,
              ),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              filled: true,
              fillColor: appTheme.gray900,
            );
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildInput3(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_mobile_number".tr,
          style: CustomTextStyles.bodyMediumWhiteA700,
        ),
        SizedBox(height: 6.v),
        Consumer<ProfileCreateProvider>(
          builder: (context, provider, child) {
            return CustomPhoneNumber(
              country: provider.selectedCountry ??
                  CountryPickerUtils.getCountryByPhoneCode('1'),
              controller: provider.phoneNumberController,
              onTap: (Country value) {
                context.read<ProfileCreateProvider>().changeCountry(value);
              },
            );
          },
        )
      ],
    );
  }

  onTapArrowdownone(BuildContext context) {}
  onTapSavedetails(BuildContext context) {}
}
