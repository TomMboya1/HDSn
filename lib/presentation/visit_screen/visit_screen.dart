import '../visit_screen/widgets/ninehundred_item_widget.dart';
import '../visit_screen/widgets/userprofile1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/presentation/home_one_page/home_one_page.dart';
import 'package:hdsn/widgets/app_bar/appbar_leading_image.dart';
import 'package:hdsn/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:hdsn/widgets/app_bar/custom_app_bar.dart';
import 'package:hdsn/widgets/custom_bottom_bar.dart';
import 'package:hdsn/widgets/custom_icon_button.dart';
import 'package:hdsn/widgets/custom_switch.dart';

class VisitScreen extends StatelessWidget {
  VisitScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

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
              _buildDoctorReviews(context),
              SizedBox(height: 14.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildView(context),
                        SizedBox(height: 27.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "Schedule",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 11.v),
                        _buildUserProfile(context),
                        SizedBox(height: 27.v),
                        _buildPlaylist(context),
                        SizedBox(height: 27.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "About a doctor",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 11.v),
                        Container(
                          width: 314.h,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            right: 73.h,
                          ),
                          child: Text(
                            "Pellentesque placerat arcu in risus facilisis, sed laoreet eros laoreet...",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 26.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "Location",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 11.v),
                        _buildClientTestimonials(context),
                        SizedBox(height: 28.v),
                        _buildReviews(context),
                      ],
                    ),
                  ),
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
  Widget _buildDoctorReviews(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 28.v),
      decoration: AppDecoration.outlineGrayE.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppBar(
            height: 20.v,
            leadingWidth: 31.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgIconArrowLeft,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 3.v,
                bottom: 4.v,
              ),
            ),
            title: AppbarSubtitleThree(
              text: "Back",
              margin: EdgeInsets.only(left: 6.h),
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  margin: EdgeInsets.only(top: 7.v),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUnsplashRm7rzydl3ry,
                        height: 100.adaptSize,
                        width: 100.adaptSize,
                        radius: BorderRadius.circular(
                          8.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          height: 26.v,
                          width: 51.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomSwitch(
                                alignment: Alignment.center,
                                value: isSelectedSwitch,
                                onChange: (value) {
                                  isSelectedSwitch = value;
                                },
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: 8.h,
                                    bottom: 3.v,
                                  ),
                                  child: Text(
                                    "4.8",
                                    style: CustomTextStyles.titleSmallOnPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr. Eleanor Pena",
                                style: theme.textTheme.bodyLarge,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "Pediatrics",
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgIconEllipses,
                            height: 6.v,
                            width: 26.h,
                            margin: EdgeInsets.only(
                              top: 10.v,
                              bottom: 27.v,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 23.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 94.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 7.h),
                                    child: CustomIconButton(
                                      height: 40.adaptSize,
                                      width: 40.adaptSize,
                                      padding: EdgeInsets.all(7.h),
                                      child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgIconChatOnprimarycontainer,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: CustomIconButton(
                                      height: 40.adaptSize,
                                      width: 40.adaptSize,
                                      padding: EdgeInsets.all(8.h),
                                      decoration:
                                          IconButtonStyleHelper.fillIndigo,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgIconPhone,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 2.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "80",
                              style: CustomTextStyles.headlineMediumInter,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 22.h),
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    bottom: 5.v,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "Сancel a visit",
                    style: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgIconArrow,
                  height: 14.v,
                  width: 9.h,
                  margin: EdgeInsets.symmetric(vertical: 5.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIconArrowGray100,
                  height: 14.v,
                  width: 9.h,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    top: 5.v,
                    bottom: 5.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(right: 22.h),
            child: Row(
              children: [
                _buildRecentOrders(
                  context,
                  experiencesText: "Patients",
                  durationText: "+423",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildRecentOrders(
                    context,
                    experiencesText: "Experiences",
                    durationText: "+8 year",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Column(
                    children: [
                      Text(
                        "Ratings",
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 10.v),
                      Container(
                        width: 114.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 33.h,
                          vertical: 17.v,
                        ),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                "4.8",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgIconStar,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(
                                top: 2.v,
                                bottom: 4.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
      height: 75.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 4.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 10.h,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return Userprofile1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Time",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 11.v),
          Wrap(
            runSpacing: 10.v,
            spacing: 10.h,
            children:
                List<Widget>.generate(5, (index) => NinehundredItemWidget()),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 44.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconLocationOnprimary,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 12.v),
          ),
          Container(
            width: 142.h,
            margin: EdgeInsets.only(
              left: 6.h,
              bottom: 3.v,
            ),
            child: Text(
              "3891 Ranchview Dr. Richardson,\nSan Francisco 62639",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgIconHospital,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 10.v),
          ),
          Container(
            width: 107.h,
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
    );
  }

  /// Section Widget
  Widget _buildReviews(BuildContext context) {
    return Container(
      height: 138.v,
      width: 362.h,
      margin: EdgeInsets.only(left: 4.h),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle38,
            height: 138.v,
            width: 362.h,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(top: 46.v),
              decoration: BoxDecoration(
                color: appTheme.indigo300,
                borderRadius: BorderRadius.circular(
                  9.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  width: 4.h,
                  strokeAlign: strokeAlignCenter,
                ),
              ),
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

  /// Common widget
  Widget _buildRecentOrders(
    BuildContext context, {
    required String experiencesText,
    required String durationText,
  }) {
    return Column(
      children: [
        Text(
          experiencesText,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray500,
          ),
        ),
        SizedBox(height: 10.v),
        Container(
          width: 114.h,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Text(
            durationText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
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
