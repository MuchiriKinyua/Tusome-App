import 'package:tusome_office/core/app_export.dart';
import 'package:tusome_office/presentation/home_page_screen/models/home_page_model.dart';
import 'package:flutter/material.dart';

class HomePageController extends GetxController {
  TextEditingController buttonController = TextEditingController();

  TextEditingController buttonOneController = TextEditingController();

  Rx<HomePageModel> homePageModelObj = HomePageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    buttonController.dispose();
    buttonOneController.dispose();
  }
}
