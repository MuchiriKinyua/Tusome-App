import 'package:tusome_office/core/app_export.dart';
import 'package:tusome_office/presentation/registration_screen/models/registration_model.dart';
import 'package:flutter/material.dart';

class RegistrationController extends GetxController {
  TextEditingController inputController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  TextEditingController inputTwoController = TextEditingController();

  TextEditingController inputThreeController = TextEditingController();

  Rx<RegistrationModel> registrationModelObj = RegistrationModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.loginScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
    inputOneController.dispose();
    inputTwoController.dispose();
    inputThreeController.dispose();
  }
}
