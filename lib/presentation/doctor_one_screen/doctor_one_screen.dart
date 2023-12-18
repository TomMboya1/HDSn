import '../doctor_one_screen/widgets/schedule_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/presentation/home_one_page/home_one_page.dart';
import 'package:hdsn/widgets/app_bar/appbar_leading_image.dart';
import 'package:hdsn/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hdsn/widgets/app_bar/custom_app_bar.dart';
import 'package:hdsn/widgets/custom_bottom_bar.dart';
import 'package:hdsn/widgets/custom_icon_button.dart';
import 'package:hdsn/widgets/custom_switch.dart';

class DoctorOneScreen extends StatelessWidget {
  DoctorOneScreen({Key? key})
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
              _buildDoctorMiles(context),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 14.v),
                  _buildAbout(context),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text(
                      "Schedule",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildSchedule(context),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text(
                      "About a doctor",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Container(
                    width: 314.h,
                    margin: EdgeInsets.only(
                      left: 26.h,
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
                  _buildLocation1(context),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorMiles(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 27.v),
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
                top: 4.v,
                bottom: 3.v,
              ),
            ),
            title: AppbarSubtitleTwo(
              text: "Back",
              margin: EdgeInsets.only(left: 6.h),
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  margin: EdgeInsets.only(top: 6.v),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUnsplash3he32krqjs,
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
                                    right: 7.h,
                                    bottom: 3.v,
                                  ),
                                  child: Text(
                                    "4.9",
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
                                "Dr. Floyd Miles",
                                style: theme.textTheme.bodyLarge,
                              ),
                              SizedBox(height: 2.v),
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
                              top: 9.v,
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
                              "95",
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
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAbout(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildExperiences(
              context,
              experiencesText: "Patients",
              durationText: "+617",
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: _buildExperiences(
                context,
                experiencesText: "Experiences",
                durationText: "+10 year",
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
                            "4.9",
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
    );
  }

  /// Section Widget
  Widget _buildSchedule(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 75.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 26.h),
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
            return ScheduleItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Location",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 11.v),
          Row(
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
                  "3891 Ranchview Dr. Richardson,\nSan Francisco 62639",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconHospital,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 34.h,
                  bottom: 25.v,
                ),
              ),
              Container(
                width: 107.h,
                margin: EdgeInsets.only(
                  left: 9.h,
                  bottom: 14.v,
                ),
                child: Text(
                  "Jane Cooper Medical College",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 59.v),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(right: 145.h),
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
  Widget _buildLocation1(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 237.v,
        width: 366.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle38,
              height: 138.v,
              width: 362.h,
              radius: BorderRadius.circular(
                8.h,
              ),
              alignment: Alignment.bottomCenter,
            ),
            _buildLocation(context),
          ],
        ),
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
  Widget _buildExperiences(
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
            horizontal: 19.h,
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
