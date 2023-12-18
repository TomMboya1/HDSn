import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/widgets/custom_checkbox_button.dart';
import 'package:hdsn/widgets/custom_elevated_button.dart';
import 'package:hdsn/widgets/custom_text_form_field.dart';

class SignUpOneScreen extends StatelessWidget {
  SignUpOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool termsAgreementSection = false;

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
                _buildTermsAgreementSection(context),
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
                SizedBox(height: 48.v),
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
          hintText: "jankowalski@self.com",
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
          hintText: "Jan2kowalski",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 18.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconEye,
              height: 20.adaptSize,
              width: 20.adaptSize,
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
  Widget _buildTermsAgreementSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 79.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "I agree with Terms and Privacy Policy",
          value: termsAgreementSection,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            termsAgreementSection = value;
          },
        ),
      ),
    );
  }
}
