import 'controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:tusome_office/core/app_export.dart';
import 'package:tusome_office/widgets/app_bar/appbar_image.dart';
import 'package:tusome_office/widgets/app_bar/custom_app_bar.dart';
import 'package:tusome_office/widgets/custom_button.dart';
import 'package:tusome_office/widgets/custom_text_form_field.dart';

class HomePageScreen extends GetWidget<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(62.00),
                leadingWidth: 34,
                leading: AppbarImage(
                    height: getSize(21.00),
                    width: getSize(21.00),
                    svgPath: ImageConstant.imgMenu,
                    margin: getMargin(left: 13, top: 30, bottom: 11)),
                title: Row(children: [
                  Container(
                      height: getVerticalSize(62.95),
                      width: getHorizontalSize(73.00),
                      margin: getMargin(left: 100),
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        AppbarImage(
                            height: getSize(52.00),
                            width: getSize(52.00),
                            imagePath: ImageConstant.imgBlackgraduatio,
                            margin: getMargin(left: 8, right: 12, bottom: 10)),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding: getPadding(top: 43),
                                child: Text("lbl_tusome".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtBookmanOldStyle16)))
                      ])),
                  AppbarImage(
                      height: getVerticalSize(40.00),
                      width: getHorizontalSize(42.00),
                      imagePath: ImageConstant.imgMessagesalert,
                      margin: getMargin(left: 50, top: 15, bottom: 7))
                ]),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(44.00),
                      width: getHorizontalSize(43.00),
                      imagePath: ImageConstant.imgProfile,
                      margin:
                          getMargin(left: 10, top: 11, right: 11, bottom: 7))
                ]),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(left: 4, top: 21),
                              decoration: BoxDecoration(
                                  color: ColorConstant.black900))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding:
                                  getPadding(left: 120, top: 30, right: 120),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgRectangle5,
                                  height: getVerticalSize(77.00),
                                  width: getHorizontalSize(82.00)))),
                      CustomTextFormField(
                          width: 138,
                          focusNode: FocusNode(),
                          controller: controller.buttonController,
                          hintText: "lbl_course".tr,
                          margin: getMargin(left: 108, top: 5, right: 108),
                          variant: TextFormFieldVariant.FillCyanA101,
                          fontStyle: TextFormFieldFontStyle.BookmanOldStyle20,
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(115.00),
                              width: getHorizontalSize(127.00),
                              margin: getMargin(left: 108, top: 19, right: 108),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 8, right: 10, bottom: 10),
                                            child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.imgRectangle6,
                                                height: getVerticalSize(84.00),
                                                width:
                                                    getHorizontalSize(90.00)))),
                                    CustomTextFormField(
                                        width: 127,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.buttonOneController,
                                        hintText: "lbl_units".tr,
                                        margin: getMargin(top: 10),
                                        variant: TextFormFieldVariant
                                            .FillLightblueA100,
                                        fontStyle: TextFormFieldFontStyle
                                            .BookmanOldStyle20,
                                        textInputAction: TextInputAction.done,
                                        alignment: Alignment.bottomLeft)
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding:
                                  getPadding(left: 116, top: 32, right: 116),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgRectangle4,
                                  height: getVerticalSize(76.00),
                                  width: getHorizontalSize(89.00)))),
                      CustomButton(
                          width: 186,
                          text: "lbl_cats_exams".tr,
                          margin: getMargin(left: 70, right: 70, bottom: 5),
                          variant: ButtonVariant.FillTealA200,
                          shape: ButtonShape.Square,
                          fontStyle: ButtonFontStyle.BookmanOldStyle20,
                          onTap: onTapCatsexams,
                          alignment: Alignment.centerRight)
                    ])))));
  }

  onTapCatsexams() {
    Get.toNamed(AppRoutes.catsAndExamsScreen);
  }
}
