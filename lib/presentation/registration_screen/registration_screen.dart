import 'controller/registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:tusome_office/core/app_export.dart';
import 'package:tusome_office/core/utils/validation_functions.dart';
import 'package:tusome_office/widgets/app_bar/appbar_image.dart';
import 'package:tusome_office/widgets/app_bar/appbar_subtitle.dart';
import 'package:tusome_office/widgets/app_bar/custom_app_bar.dart';
import 'package:tusome_office/widgets/custom_button.dart';
import 'package:tusome_office/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistrationScreen extends GetWidget<RegistrationController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                      margin: getMargin(left: 11, top: 23, bottom: 13)),
                  AppbarImage(
                      height: getSize(25.00),
                      width: getSize(25.00),
                      svgPath: ImageConstant.imgSignal,
                      margin: getMargin(left: 178, top: 13, bottom: 17))
                ]),
                actions: [
                  AppbarImage(
                      height: getSize(25.00),
                      width: getSize(25.00),
                      svgPath: ImageConstant.imgSignal25x25,
                      margin: getMargin(left: 7, top: 13, bottom: 17)),
                  AppbarImage(
                      height: getSize(25.00),
                      width: getSize(25.00),
                      svgPath: ImageConstant.imgTelevision,
                      margin:
                          getMargin(left: 7, top: 13, right: 16, bottom: 17))
                ]),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(132.00),
                                      width: size.width,
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgRectangle1,
                                                    height:
                                                        getVerticalSize(132.00),
                                                    width: getHorizontalSize(
                                                        360.00))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(132.00),
                                                    width: size.width,
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Padding(
                                                                  padding: getPadding(
                                                                      left: 140,
                                                                      top: 6,
                                                                      right:
                                                                          140,
                                                                      bottom:
                                                                          10),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.centerRight,
                                                                            child: Padding(padding: getPadding(left: 13, right: 8), child: CommonImageView(imagePath: ImageConstant.imgBlackgraduatio, height: getSize(52.00), width: getSize(52.00)))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            child: Padding(padding: getPadding(top: 7), child: Text("lbl_tusome".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBookmanOldStyle16)))
                                                                      ]))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          132.00),
                                                                  width: size
                                                                      .width,
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .centerLeft,
                                                                            child: CommonImageView(
                                                                                svgPath: ImageConstant.imgRectangle1,
                                                                                height: getVerticalSize(132.00),
                                                                                width: getHorizontalSize(360.00))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            child: Padding(
                                                                                padding: getPadding(left: 140, top: 6, right: 140, bottom: 10),
                                                                                child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                  Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 13, right: 8), child: CommonImageView(imagePath: ImageConstant.imgBlackgraduatio, height: getSize(52.00), width: getSize(52.00)))),
                                                                                  Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(top: 7), child: Text("lbl_tusome".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBookmanOldStyle16)))
                                                                                ])))
                                                                      ])))
                                                        ])))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 31, top: 42, right: 31),
                                      child: Text("msg_please_register".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtBookmanOldStyle16))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 26, top: 34, right: 26),
                                      child: Text("msg_enter_your_full".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtBookmanOldStyle16))),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputController,
                                  hintText: "lbl_your_name".tr,
                                  margin: getMargin(left: 26, right: 26),
                                  alignment: Alignment.centerLeft,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 24, top: 11, right: 24),
                                      child: Text("msg_enter_your_email".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtBookmanOldStyle16))),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputOneController,
                                  hintText: "lbl_your_email".tr,
                                  margin:
                                      getMargin(left: 27, top: 1, right: 27),
                                  alignment: Alignment.centerLeft,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 25, top: 7, right: 25),
                                      child: Text("msg_enter_your_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtBookmanOldStyle16))),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputTwoController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 26, top: 1, right: 26),
                                  alignment: Alignment.centerLeft,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 26, top: 15, right: 26),
                                      child: Text(
                                          "msg_confirm_your_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtBookmanOldStyle16))),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputThreeController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 27, top: 1, right: 27),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.centerLeft,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomButton(
                                  width: 156,
                                  text: "lbl_register".tr,
                                  margin: getMargin(
                                      left: 59, top: 14, right: 59, bottom: 5),
                                  variant: ButtonVariant.FillGreenA200,
                                  shape: ButtonShape.Square,
                                  fontStyle: ButtonFontStyle.BookmanOldStyle20,
                                  onTap: onTapRegister,
                                  alignment: Alignment.centerLeft)
                            ]))))));
  }

  onTapRegister() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
