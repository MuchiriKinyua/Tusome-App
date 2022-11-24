import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:tusome_office/core/app_export.dart';
import 'package:tusome_office/core/utils/validation_functions.dart';
import 'package:tusome_office/widgets/app_bar/appbar_image.dart';
import 'package:tusome_office/widgets/app_bar/appbar_subtitle.dart';
import 'package:tusome_office/widgets/app_bar/custom_app_bar.dart';
import 'package:tusome_office/widgets/custom_button.dart';
import 'package:tusome_office/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
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
                                      height: getVerticalSize(172.00),
                                      width: size.width,
                                      margin: getMargin(top: 27),
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                    margin: getMargin(top: 10),
                                                    decoration: AppDecoration
                                                        .fillGreen300,
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 46,
                                                                      top: 46,
                                                                      right:
                                                                          46),
                                                              child: Text(
                                                                  "lbl_tusome2"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtBookmanOldStyle16)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 46,
                                                                      top: 20,
                                                                      right: 34,
                                                                      bottom:
                                                                          26),
                                                              child: Text(
                                                                  "msg_welcome_to_the_e_learning"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtBookmanOldStyle16))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 153,
                                                        top: 28,
                                                        right: 153,
                                                        bottom: 28),
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgBlackgraduatio,
                                                        height: getSize(52.00),
                                                        width:
                                                            getSize(52.00)))),
                                            CustomAppBar(
                                                height: getVerticalSize(56.00),
                                                title: Row(children: [
                                                  AppbarSubtitle(
                                                      text: "lbl_12_18_pm".tr,
                                                      margin: getMargin(
                                                          left: 14, top: 10)),
                                                  AppbarImage(
                                                      height: getSize(25.00),
                                                      width: getSize(25.00),
                                                      svgPath: ImageConstant
                                                          .imgSignal,
                                                      margin: getMargin(
                                                          left: 178, bottom: 4))
                                                ]),
                                                actions: [
                                                  AppbarImage(
                                                      height: getSize(25.00),
                                                      width: getSize(25.00),
                                                      svgPath: ImageConstant
                                                          .imgSignal1,
                                                      margin: getMargin(
                                                          left: 7, bottom: 4)),
                                                  AppbarImage(
                                                      height: getSize(25.00),
                                                      width: getSize(25.00),
                                                      svgPath: ImageConstant
                                                          .imgTelevision,
                                                      margin: getMargin(
                                                          left: 7,
                                                          right: 13,
                                                          bottom: 4))
                                                ])
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 26, top: 14, right: 26),
                                      child: Text("msg_please_login_below".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtBookmanOldStyle16))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 26, top: 41, right: 26),
                                      child: Text("msg_enter_your_email".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtBookmanOldStyle16))),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputController,
                                  hintText: "lbl_your_email".tr,
                                  margin:
                                      getMargin(left: 29, top: 6, right: 29),
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
                                          left: 26, top: 19, right: 26),
                                      child: Text("msg_enter_your_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtBookmanOldStyle16))),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputOneController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 29, top: 11, right: 29),
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
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 26,
                                          top: 26,
                                          right: 21,
                                          bottom: 145),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            CustomButton(
                                                width: 154,
                                                text: "lbl_log_in".tr,
                                                margin: getMargin(top: 20),
                                                variant:
                                                    ButtonVariant.FillCyanA100,
                                                shape: ButtonShape.Square,
                                                padding:
                                                    ButtonPadding.PaddingAll7,
                                                fontStyle: ButtonFontStyle
                                                    .BookmanOldStyle20,
                                                onTap: onTapLogin),
                                            Container(
                                                margin: getMargin(bottom: 32),
                                                padding: getPadding(
                                                    top: 2, bottom: 2),
                                                decoration: AppDecoration
                                                    .txtOutlineBlack9003f
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtCircleBorder14),
                                                child: Text(
                                                    "msg_forgot_password".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtBookmanOldStyle13))
                                          ])))
                            ]))))));
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.homePageScreen);
  }
}
