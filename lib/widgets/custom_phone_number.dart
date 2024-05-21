import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import '../core/app_export.dart';
import 'custom_text_form_field.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber(
      {Key? key,
      required this.country,
      required this.onTap,
      required this.controller})
      : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 17.v,
                bottom: 17.v,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.v),
                    child: CountryPickerUtils.getDefaultFlagImage(
                      country,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDownIndigo5018x18,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.fromLTRB(8.h, 2.v, 9.h, 2.v),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                right: 5.h,
              ),
              child: CustomTextFormField(
                width: 275.h,
                controller: controller,
                hintText: "lbl_12345_67890".tr,
                contentPadding: EdgeInsets.symmetric(horizontal: 30.h),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          )
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
