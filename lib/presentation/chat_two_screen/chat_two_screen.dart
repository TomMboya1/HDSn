import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/presentation/home_one_page/home_one_page.dart';
import 'package:hdsn/widgets/app_bar/appbar_leading_image.dart';
import 'package:hdsn/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hdsn/widgets/app_bar/custom_app_bar.dart';
import 'package:hdsn/widgets/custom_bottom_bar.dart';
import 'package:hdsn/widgets/custom_elevated_button.dart';
import 'package:hdsn/widgets/custom_icon_button.dart';
import 'package:hdsn/widgets/custom_text_form_field.dart';

class ChatTwoScreen extends StatelessWidget {
  ChatTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messageController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildDoctorProfile(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 26.h,
                  vertical: 7.v,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Today",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        _buildMessageContainer(context),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(right: 57.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUser36x36,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 157.v,
                                  bottom: 4.v,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 10.h),
                                  padding: EdgeInsets.all(4.h),
                                  decoration: AppDecoration
                                      .fillOnPrimaryContainer
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL8,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage1,
                                        height: 173.v,
                                        width: 129.h,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgUnsplashF6clvre8fgg,
                                        height: 173.v,
                                        width: 134.h,
                                        radius: BorderRadius.circular(
                                          8.h,
                                        ),
                                        margin: EdgeInsets.only(left: 4.h),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 57.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "9:12",
                                  style: CustomTextStyles.labelLargeSemiBold,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgIconCheckGray500,
                                  height: 9.adaptSize,
                                  width: 9.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 2.h,
                                    top: 2.v,
                                    bottom: 3.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 33.v),
                    _buildMessageInput(context),
                    SizedBox(height: 4.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorProfile(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.v),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          CustomAppBar(
            height: 20.v,
            leadingWidth: 31.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgIconArrowLeft,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 4.v,
                bottom: 3.v,
              ),
            ),
            title: AppbarSubtitleTwo(
              text: "Back",
              margin: EdgeInsets.only(left: 6.h),
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUser36x36,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  margin: EdgeInsets.only(top: 6.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Floyd Miles",
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 2.v),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 4.v),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(
                                4.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "Online",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.fillIndigo,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconPhone,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageContainer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(right: 70.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUser36x36,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(top: 34.v),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.fillIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Container(
                          width: 236.h,
                          margin: EdgeInsets.only(right: 4.h),
                          child: Text(
                            "Hello, how are you feeling? Did you manage to buy medicines?",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style:
                                CustomTextStyles.titleMediumOnPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 2.v),
        Padding(
          padding: EdgeInsets.only(right: 70.h),
          child: _buildMessageTime(
            context,
            timeText: "7:21",
          ),
        ),
        SizedBox(height: 13.v),
        Padding(
          padding: EdgeInsets.only(left: 105.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL8,
                ),
                child: Container(
                  width: 208.h,
                  margin: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "Hello, yes. Only now my headaches have intensified",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumMedium,
                  ),
                ),
              ),
              Container(
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 34.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 6.h,
                  vertical: 2.v,
                ),
                decoration: AppDecoration.fillSecondaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Text(
                  "K",
                  style: CustomTextStyles.bodySmallOnPrimaryContainer,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 2.v),
        Padding(
          padding: EdgeInsets.only(right: 30.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "7:24",
                style: CustomTextStyles.labelLargeSemiBold,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRefresh,
                height: 9.v,
                width: 14.h,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 2.v,
                  bottom: 3.v,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 13.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUser36x36,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(top: 15.v),
              ),
              CustomElevatedButton(
                height: 35.v,
                width: 215.h,
                text: "Please describe your pain",
                margin: EdgeInsets.only(left: 10.h),
                buttonStyle: CustomButtonStyles.fillIndigo,
                buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
              ),
            ],
          ),
        ),
        SizedBox(height: 2.v),
        Padding(
          padding: EdgeInsets.only(right: 117.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "7:40",
                style: CustomTextStyles.labelLargeSemiBold,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRefresh,
                height: 9.v,
                width: 14.h,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 2.v,
                  bottom: 3.v,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 13.v),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 87.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 8.v,
                      ),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgAudio,
                            height: 28.v,
                            width: 188.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              top: 5.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "1:24",
                              style: CustomTextStyles.titleSmallOnPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      top: 24.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillSecondaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Text(
                      "K",
                      style: CustomTextStyles.bodySmallOnPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.v),
            Padding(
              padding: EdgeInsets.only(right: 30.h),
              child: _buildMessageTime(
                context,
                timeText: "7:41",
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMessageInput(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomTextFormField(
            controller: messageController,
            hintText: "Write a message",
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 15.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconPaperClip,
                height: 22.adaptSize,
                width: 22.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 49.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 20.h,
              top: 16.v,
              bottom: 16.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
            fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: CustomIconButton(
            height: 49.adaptSize,
            width: 49.adaptSize,
            padding: EdgeInsets.all(9.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconSend,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildMessageTime(
    BuildContext context, {
    required String timeText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          timeText,
          style: CustomTextStyles.labelLargeSemiBold.copyWith(
            color: appTheme.gray500,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRefresh,
          height: 9.v,
          width: 14.h,
          margin: EdgeInsets.only(
            left: 2.h,
            top: 2.v,
            bottom: 3.v,
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconhome:
        return "/";
      case BottomBarEnum.Iconreceipt:
        return "/";
      case BottomBarEnum.Iconplus:
        return AppRoutes.homeOnePage;
      case BottomBarEnum.Iconchat:
        return "/";
      case BottomBarEnum.Iconprofil:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeOnePage:
        return HomeOnePage();
      default:
        return DefaultWidget();
    }
  }
}
