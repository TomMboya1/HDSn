import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/widgets/app_bar/appbar_title_image.dart';
import 'package:hdsn/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hdsn/widgets/app_bar/custom_app_bar.dart';
import 'package:hdsn/widgets/custom_drop_down.dart';
import 'package:hdsn/widgets/custom_elevated_button.dart';
import 'package:hdsn/widgets/custom_text_form_field.dart';

class StartFourScreen extends StatelessWidget {
  StartFourScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fifteenController = TextEditingController();

  TextEditingController sixteenController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 50.v,
          ),
          child: Column(
            children: [
              Text(
                "A little about yourself",
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 14.v),
              Text(
                "Ed laoreet eros laoreet.",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 65.v),
              _buildGenderColumn(context),
              SizedBox(height: 43.v),
              _buildBirthdayColumn(context),
              SizedBox(height: 37.v),
              _buildLocationColumn(context),
              SizedBox(height: 82.v),
              CustomElevatedButton(
                width: 204.h,
                text: "Continue",
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgVector,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVectorSecondarycontainer,
          margin: EdgeInsets.fromLTRB(190.h, 26.v, 190.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGenderColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your gender",
          style: CustomTextStyles.titleMediumGilroy_1,
        ),
        SizedBox(height: 12.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: _buildGenderRow(
                context,
                userImage: ImageConstant.imgIconMale,
                female: "Male",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: _buildGenderRow(
                context,
                userImage: ImageConstant.imgIconFemale,
                female: "Female",
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDayColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Day:",
          style: CustomTextStyles.titleMediumGray500Medium,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          width: 79.h,
          controller: fifteenController,
          hintText: "23",
          hintStyle: CustomTextStyles.titleMediumMedium,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 8.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary,
          fillColor: appTheme.gray100,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildYearColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Year:",
            style: CustomTextStyles.titleMediumGray500Medium,
          ),
          SizedBox(height: 7.v),
          CustomTextFormField(
            width: 79.h,
            controller: zipcodeController,
            hintText: "2000",
            hintStyle: CustomTextStyles.titleMediumMedium,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 8.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary,
            fillColor: appTheme.gray100,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBirthdayColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your birthday",
          style: CustomTextStyles.titleMediumGilroy_1,
        ),
        SizedBox(height: 11.v),
        Padding(
          padding: EdgeInsets.only(right: 93.h),
          child: Row(
            children: [
              _buildDayColumn(context),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mounth:",
                      style: CustomTextStyles.titleMediumGray500Medium,
                    ),
                    SizedBox(height: 7.v),
                    CustomTextFormField(
                      width: 79.h,
                      controller: sixteenController,
                      hintText: "11",
                      hintStyle: CustomTextStyles.titleMediumMedium,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 8.v,
                      ),
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineOnPrimary,
                      fillColor: appTheme.gray100,
                    ),
                  ],
                ),
              ),
              _buildYearColumn(context),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLocationColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your location",
          style: CustomTextStyles.titleMediumGilroy_1,
        ),
        SizedBox(height: 14.v),
        CustomDropDown(
          hintText: "Poland, Warsaw",
          items: dropdownItemList,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(14.h, 10.v, 12.h, 10.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEmojioneflagforpoland,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 44.v,
          ),
          onChanged: (value) {},
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildGenderRow(
    BuildContext context, {
    required String userImage,
    required String female,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 18.v,
        ),
        decoration: AppDecoration.fillBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 63.adaptSize,
              width: 63.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder13,
              ),
              child: CustomImageView(
                imagePath: userImage,
                height: 27.v,
                width: 16.h,
                alignment: Alignment.centerRight,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 19.v,
                bottom: 21.v,
              ),
              child: Text(
                female,
                style: CustomTextStyles.titleMediumGilroy_1.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
