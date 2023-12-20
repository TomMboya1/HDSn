import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/widgets/app_bar/appbar_title_image.dart';
import 'package:hdsn/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hdsn/widgets/app_bar/custom_app_bar.dart';
import 'package:hdsn/widgets/custom_checkbox_button.dart';
import 'package:hdsn/widgets/custom_elevated_button.dart';
import 'package:hdsn/widgets/custom_text_form_field.dart';

class SignUpErorScreen extends StatelessWidget {
  SignUpErorScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool iAgreeWithTermsAndPrivacyPolicy = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 50.v,
            ),
            child: Column(
              children: [
                Text(
                  "Sign Up",
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 32.v),
                _buildFullName1(context),
                SizedBox(height: 12.v),
                _buildEmail2(context),
                SizedBox(height: 15.v),
                _buildPassword(context),
                SizedBox(height: 16.v),
                _buildIAgreeWithTermsAndPrivacyPolicy(context),
                SizedBox(height: 7.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Suspendisse efficitur placerat nisi",
                    style: CustomTextStyles.labelLargeDeeporange400,
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  width: 203.h,
                  text: "Sign Up",
                ),
                SizedBox(height: 15.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have account? ",
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "Sign In",
                        style: CustomTextStyles.titleSmallPrimary.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 25.v),
              ],
            ),
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
  Widget _buildFullName1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: _buildEmail(
              context,
              emailLabel: "Full Name",
              textLabel: "*",
              messageText: "Suspendisse efficitur placerat nisi",
            ),
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: fullNameController,
            hintText: "Jan Kowalski",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: _buildEmail(
              context,
              emailLabel: "Email",
              textLabel: "*",
              messageText: "Phasellus varius, ex sit",
            ),
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: emailController,
            hintText: "jankowalski@self.com",
            textInputType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Password",
              style: CustomTextStyles.titleMediumGray500Medium,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: CustomTextFormField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 11.v, 18.h, 11.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconEyeClosed,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 44.v,
              ),
              obscureText: true,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIAgreeWithTermsAndPrivacyPolicy(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 80.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "I agree with Terms and Privacy Policy",
          value: iAgreeWithTermsAndPrivacyPolicy,
          onChange: (value) {
            iAgreeWithTermsAndPrivacyPolicy = value;
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildEmail(
    BuildContext context, {
    required String emailLabel,
    required String textLabel,
    required String messageText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            emailLabel,
            style: CustomTextStyles.titleMediumGray500Medium.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 2.h,
            bottom: 3.v,
          ),
          child: Text(
            textLabel,
            style: CustomTextStyles.titleMediumDeeporange400.copyWith(
              color: appTheme.deepOrange400,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 8.v),
          child: Text(
            messageText,
            style: CustomTextStyles.labelLargeDeeporange400.copyWith(
              color: appTheme.deepOrange400,
            ),
          ),
        ),
      ],
    );
  }
}
