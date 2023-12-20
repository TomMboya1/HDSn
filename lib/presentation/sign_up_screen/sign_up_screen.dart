import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/widgets/custom_checkbox_button.dart';
import 'package:hdsn/widgets/custom_elevated_button.dart';
import 'package:hdsn/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool termsAndPrivacySection = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 26.h,
              vertical: 27.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogoMedicine1,
                  height: 32.v,
                  width: 33.h,
                ),
                SizedBox(height: 62.v),
                Text(
                  "Sign Up",
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 34.v),
                _buildFullNameSection(context),
                SizedBox(height: 15.v),
                _buildEmailSection(context),
                SizedBox(height: 15.v),
                _buildPasswordSection(context),
                SizedBox(height: 16.v),
                _buildTermsAndPrivacySection(context),
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
                SizedBox(height: 18.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Full Name",
          style: CustomTextStyles.titleMediumGray500Medium,
        ),
        SizedBox(height: 5.v),
        CustomTextFormField(
          controller: fullNameController,
          hintText: "Jan Kowalski",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: CustomTextStyles.titleMediumGray500Medium,
        ),
        SizedBox(height: 5.v),
        CustomTextFormField(
          controller: emailController,
          hintText: "patient@self.com",
          textInputType: TextInputType.emailAddress,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: CustomTextStyles.titleMediumGray500Medium,
        ),
        SizedBox(height: 5.v),
        CustomTextFormField(
          controller: passwordController,
          hintText: "min 8 cyfr",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
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
          contentPadding: EdgeInsets.only(
            left: 18.h,
            top: 13.v,
            bottom: 13.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTermsAndPrivacySection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 79.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "I agree with Terms and Privacy Policy",
          value: termsAndPrivacySection,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            termsAndPrivacySection = value;
          },
        ),
      ),
    );
  }
}
