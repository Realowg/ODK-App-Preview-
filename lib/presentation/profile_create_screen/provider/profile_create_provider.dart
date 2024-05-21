import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import '../../../core/app_export.dart';
import '../models/profile_create_model.dart';

/// A provider class for the ProfileCreateScreen.
///
/// This provider manages the state of the ProfileCreateScreen, including the
/// current profileCreateModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfileCreateProvider extends ChangeNotifier {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  ProfileCreateModel profileCreateModelObj = ProfileCreateModel();

  Country? selectedCountry;

  @override
  void dispose() {
    super.dispose();
    fullNameController.dispose();
    userNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
  }

  void changeCountry(Country value) {
    selectedCountry = value;
    notifyListeners();
  }
}
