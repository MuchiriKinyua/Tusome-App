import 'controller/my_units_controller.dart';
import 'package:flutter/material.dart';
import 'package:tusome_office/core/app_export.dart';
import 'package:tusome_office/widgets/app_bar/appbar_image.dart';
import 'package:tusome_office/widgets/app_bar/appbar_subtitle.dart';
import 'package:tusome_office/widgets/app_bar/custom_app_bar.dart';
import 'package:tusome_office/widgets/custom_button.dart';
import 'package:tusome_office/widgets/custom_text_form_field.dart';

class MyUnitsScreen extends GetWidget<MyUnitsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                title: Row(children: [
                  AppbarSubtitle(
                      text: "lbl_12_18_pm".tr,
                      margin: getMargin(left: 17, top: 21, bottom: 9)),
                  AppbarImage(
                      height: getSize(25.00),
                      width: getSize(25.00),
                      svgPath: ImageConstant.imgSignal,
                      margin: getMargin(left: 171, top: 10, bottom: 15))
                ]),
                actions: [
                  AppbarImage(
                      height: getSize(25.00),
                      width: getSize(25.00),
                      svgPath: ImageConstant.imgSignal1,
                      margin: getMargin(left: 7, top: 10, bottom: 15)),
                  AppbarImage(
                      height: getSize(25.00),
                      width: getSize(25.00),
                      svgPath: ImageConstant.imgTelevision,
                      margin:
                          getMargin(left: 7, top: 10, right: 17, bottom: 15))
                ]),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(132.00),
                              width: size.width,
                              margin: getMargin(top: 22),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgRectangle1,
                                            height: getVerticalSize(132.00),
                                            width: getHorizontalSize(360.00))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 140,
                                                top: 6,
                                                right: 140,
                                                bottom: 10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 13,
                                                              right: 8),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgBlackgraduatio,
                                                              height: getSize(
                                                                  52.00),
                                                              width: getSize(
                                                                  52.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 7),
                                                          child: Text(
                                                              "lbl_tusome".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtBookmanOldStyle16)))
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 139, top: 10, right: 8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 24),
                                        child: Text("lbl_units2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtBookmanOldStyle15)),
                                    CustomButton(
                                        width: 83,
                                        text: "lbl_back".tr,
                                        margin: getMargin(left: 82, top: 7),
                                        shape: ButtonShape.Square,
                                        onTap: onTapBack)
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 32, top: 32, right: 32),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomTextFormField(
                                        width: 200,
                                        focusNode: FocusNode(),
                                        controller: controller.inputController,
                                        hintText: "lbl_search_unit".tr,
                                        textInputAction: TextInputAction.done),
                                    Padding(
                                        padding: getPadding(left: 10, top: 5),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgSearch,
                                            height: getSize(25.00),
                                            width: getSize(25.00)))
                                  ]))),
                      Container(
                          width: double.infinity,
                          margin: getMargin(
                              left: 32, top: 17, right: 24, bottom: 5),
                          decoration: AppDecoration.fillBluegray100,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 92,
                                        top: 34,
                                        right: 92,
                                        bottom: 5),
                                    child: Text("lbl_list_of_units".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBookmanOldStyle16))
                              ]))
                    ])))));
  }

  onTapBack() {
    Get.toNamed(AppRoutes.homePageScreen);
  }
}
