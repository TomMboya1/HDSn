import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/presentation/home_one_page/home_one_page.dart';
import 'package:hdsn/widgets/app_bar/appbar_leading_image.dart';
import 'package:hdsn/widgets/app_bar/appbar_subtitle.dart';
import 'package:hdsn/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:hdsn/widgets/app_bar/appbar_title_image.dart';
import 'package:hdsn/widgets/app_bar/custom_app_bar.dart';
import 'package:hdsn/widgets/custom_bottom_bar.dart';
import 'package:hdsn/widgets/custom_elevated_button.dart';
import 'package:hdsn/widgets/custom_icon_button.dart';

class ThankYouScreen extends StatelessWidget {
  ThankYouScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildThankYou(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 18.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 15.v),
                    _buildDoctorReviews(context),
                    SizedBox(height: 25.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        right: 61.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date:",
                                style: theme.textTheme.bodyLarge,
                              ),
                              SizedBox(height: 13.v),
                              Text(
                                "26 March, 2023",
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Time:",
                                style: theme.textTheme.bodyLarge,
                              ),
                              SizedBox(height: 12.v),
                              Text(
                                "16:00",
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "Location:",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    _buildLocation(context),
                    SizedBox(height: 27.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 4.v,
                              bottom: 6.v,
                            ),
                            child: Text(
                              "Cost:",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text(
                              "95",
                              style: CustomTextStyles.headlineMediumInter,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 39.v),
                    CustomElevatedButton(
                      width: 205.h,
                      text: "Go to payment",
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 11.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Cancel reservation",
                        style: CustomTextStyles.bodyLargeGray500,
                      ),
                    ),
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
  Widget _buildThankYou(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 21.v),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL38,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          CustomAppBar(
            height: 32.v,
            leadingWidth: 31.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgIconArrowLeftOnprimarycontainer,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 5.v,
                bottom: 15.v,
              ),
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Row(
                children: [
                  AppbarSubtitleOne(
                    text: "Back",
                    margin: EdgeInsets.only(bottom: 11.v),
                  ),
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgLogoMedicine1Secondarycontainer,
                    margin: EdgeInsets.only(left: 72.h),
                  ),
                  AppbarSubtitle(
                    text: "Self Care",
                    margin: EdgeInsets.only(
                      left: 11.h,
                      top: 5.v,
                      bottom: 4.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 36.v),
          Text(
            "Thank you!",
            style: CustomTextStyles.headlineMediumOnPrimaryContainer,
          ),
          SizedBox(height: 12.v),
          CustomIconButton(
            height: 58.adaptSize,
            width: 58.adaptSize,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.outlineOnPrimaryContainer,
            child: CustomImageView(
              imagePath: ImageConstant.imgIconCheckOnprimarycontainer,
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            width: 336.h,
            margin: EdgeInsets.only(
              left: 38.h,
              right: 39.h,
            ),
            child: Text(
              "Your visit has been successfully reserved, please pay for it to get an appointment with the selected doctor",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeGilroyMediumOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorReviews(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUser36x36,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr. Floyd Miles",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "Pediatrics",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 20.v),
            child: Text(
              "(101 reviews)",
              style: CustomTextStyles.labelLargeBluegray100,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconStar,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              left: 2.h,
              bottom: 20.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              bottom: 18.v,
            ),
            child: Text(
              "4.9",
              style: CustomTextStyles.titleSmallOnPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconLocationOnprimary,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 27.v),
                ),
                Container(
                  width: 142.h,
                  margin: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "3891 Ranchview\nDr. Richardson,\nSan Francisco 62639",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 19.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconHospital,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 11.v,
                  ),
                ),
                Container(
                  width: 108.h,
                  margin: EdgeInsets.only(left: 9.h),
                  child: Text(
                    "Jane Cooper Medical College",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall,
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
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
