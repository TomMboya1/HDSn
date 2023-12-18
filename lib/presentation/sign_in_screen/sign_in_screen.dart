import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/widgets/custom_elevated_button.dart';
import 'package:hdsn/widgets/custom_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                  "Sign In",
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 34.v),
                _buildEmailSection(context),
                SizedBox(height: 15.v),
                _buildPasswordSection(context),
                SizedBox(height: 17.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot your password?",
                    style: CustomTextStyles.titleSmallPrimary_1,
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  width: 204.h,
                  text: "Sign In",
                ),
                SizedBox(height: 15.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don’t have an account? ",
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "Sign Up",
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
          hintText: "Min 8 cyfr",
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
}
