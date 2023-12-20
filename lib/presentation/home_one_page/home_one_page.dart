import '../home_one_page/widgets/list_item_widget.dart';
import '../home_one_page/widgets/userprofile_item_widget.dart';
import '../home_one_page/widgets/userprofilelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:hdsn/widgets/app_bar/appbar_title.dart';
import 'package:hdsn/widgets/app_bar/appbar_title_image.dart';
import 'package:hdsn/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hdsn/widgets/app_bar/custom_app_bar.dart';
import 'package:hdsn/widgets/custom_icon_button.dart';
import 'package:hdsn/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeOnePage extends StatelessWidget {
  HomeOnePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSearchRow(context),
                  SizedBox(height: 9.v),
                  _buildList(context),
                  SizedBox(height: 26.v),
                  _buildRecentColumn(context),
                  SizedBox(height: 31.v),
                  _buildCategoriesScroll(context),
                  SizedBox(height: 28.v),
                  _buildPopularDoctorsColumn(context),
                  SizedBox(height: 8.v),
                  _buildUserProfileList(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 95.v,
      title: Padding(
        padding: EdgeInsets.only(left: 26.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "Wellcome Back, Mark!",
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(right: 159.h),
              child: Row(
                children: [
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgIconLocation,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  AppbarSubtitleFour(
                    text: "Warsaw, Poland",
                    margin: EdgeInsets.only(left: 4.h),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconNotification,
          margin: EdgeInsets.fromLTRB(24.h, 3.v, 24.h, 29.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 26.h,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomSearchView(
              controller: searchController,
              hintText: "Example “heart”",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(9.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconFilter,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 26.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 3.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 26.h,
      ),
      child: Column(
        children: [
          _buildPopularDoctorsRow(
            context,
            dynamicText: "Recent",
            dynamicText1: "See all",
          ),
          SizedBox(height: 11.v),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 6.v,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return UserprofileItemWidget();
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoriesColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 9.v),
        SizedBox(
          height: 98.v,
          width: 388.h,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 98.v,
                      width: 110.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 98.v,
                              width: 110.h,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1),
                                borderRadius: BorderRadius.circular(
                                  14.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomIconButton(
                                    height: 43.adaptSize,
                                    width: 43.adaptSize,
                                    padding: EdgeInsets.all(9.h),
                                    decoration:
                                        IconButtonStyleHelper.fillDeepOrange,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgIconHeart,
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  Text(
                                    "Cardiologyst",
                                    style: CustomTextStyles.bodySmallOnPrimary,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 98.v,
                      width: 118.h,
                      decoration: BoxDecoration(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        borderRadius: BorderRadius.circular(
                          14.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 118.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 15.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder13,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 43.adaptSize,
                        width: 43.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 9.v,
                        ),
                        decoration: AppDecoration.fillIndigo300.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconEyeIndigo300,
                          height: 21.adaptSize,
                          width: 21.adaptSize,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "Ophthalmologyst",
                        style: CustomTextStyles.bodySmallOnPrimary,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(right: 26.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 37.h,
                    vertical: 15.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder13,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 43.adaptSize,
                        width: 43.adaptSize,
                        padding: EdgeInsets.all(10.h),
                        decoration: AppDecoration.fillOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconTooth,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "Dentist",
                        style: CustomTextStyles.bodySmallOnPrimary,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCategoriesScroll(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 3.h),
      child: IntrinsicWidth(
        child: _buildCategoriesColumn(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPopularDoctorsColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 29.h),
      child: Column(
        children: [
          _buildPopularDoctorsRow(
            context,
            dynamicText: "Popular Doctors",
            dynamicText1: "See all",
          ),
          SizedBox(height: 10.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder13,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUser36x36,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 9.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Floyd Miles",
                        style: CustomTextStyles.bodyLarge16,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "Pediatrics",
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 65.h,
                    top: 3.v,
                    bottom: 29.v,
                  ),
                  child: Text(
                    "(123 reviews)",
                    style: CustomTextStyles.labelLargeBluegray100,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIconStar,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    top: 3.v,
                    bottom: 29.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 2.v,
                    bottom: 28.v,
                  ),
                  child: Text(
                    "4.9",
                    style: CustomTextStyles.titleSmallOnPrimary,
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
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 29.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 8.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return UserprofilelistItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildPopularDoctorsRow(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dynamicText,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 185.h,
            top: 3.v,
            bottom: 4.v,
          ),
          child: Text(
            dynamicText1,
            style: CustomTextStyles.bodySmallOnPrimary.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
      ],
    );
  }
}
