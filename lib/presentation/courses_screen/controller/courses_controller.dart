import 'package:tusome_office/core/app_export.dart';
import 'package:tusome_office/presentation/courses_screen/models/courses_model.dart';
import 'package:flutter/material.dart';

class CoursesController extends GetxController {
  TextEditingController inputController = TextEditingController();

  Rx<CoursesModel> coursesModelObj = CoursesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
  }
}
