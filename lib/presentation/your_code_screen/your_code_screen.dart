import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/widgets/app_bar/appbar_title_image.dart';
import 'package:hdsn/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hdsn/widgets/app_bar/custom_app_bar.dart';
import 'package:hdsn/widgets/custom_elevated_button.dart';
import 'package:hdsn/widgets/custom_pin_code_text_field.dart';

class YourCodeScreen extends StatelessWidget {
  const YourCodeScreen({Key? key})
      : super(
          key: key,
        );

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
            horizontal: 15.h,
            vertical: 47.v,
          ),
          child: Column(
            children: [
              Text(
                "Your Code",
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 17.v),
              Text(
                "Code send to yor Email",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 40.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 11.h,
                  right: 12.h,
                ),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "(2:10)",
                          style: CustomTextStyles.titleSmallOnPrimary_1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Resend Code? ",
                                style: theme.textTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: "Click here",
                                style:
                                    CustomTextStyles.titleSmallPrimary.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                width: 204.h,
                text: "Verify",
              ),
              SizedBox(height: 37.v),
              _buildKeyboardSuggestion(context),
              _buildFour(
                context,
                text1: "1",
                text2: "2",
                text3: "3",
              ),
              SizedBox(height: 7.v),
              _buildFour(
                context,
                text1: "4",
                text2: "5",
                text3: "6",
              ),
              SizedBox(height: 7.v),
              _buildFour(
                context,
                text1: "7",
                text2: "8",
                text3: "9",
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 46.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomElevatedButton(
                        height: 46.v,
                        width: 123.h,
                        text: "0",
                        buttonStyle: CustomButtonStyles.fillWhiteA,
                        buttonTextStyle: theme.textTheme.headlineSmall!,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgClose,
                        height: 17.v,
                        width: 24.h,
                        margin: EdgeInsets.only(
                          left: 58.h,
                          top: 13.v,
                          bottom: 15.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 17.v),
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
  Widget _buildKeyboardSuggestion(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 13.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Opacity(
            opacity: 0.5,
            child: SizedBox(
              height: 25.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "1427",
              style: CustomTextStyles.bodyLargeSFProText,
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: SizedBox(
              height: 25.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFour(
    BuildContext context, {
    required String text1,
    required String text2,
    required String text3,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 123.h,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            text1,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        Container(
          width: 123.h,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            text2,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        Container(
          width: 123.h,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            text3,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
      ],
    );
  }
}
