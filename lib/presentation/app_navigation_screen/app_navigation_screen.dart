import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Start One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.startOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Start Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.startTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Start Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.startThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Start Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.startFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up eror",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpErorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Your Code",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.yourCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home One - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeOneContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Visit",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.visitScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Doctors - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.doctorsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Doctor One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.doctorOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Doctor Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.doctorTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Thank you",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.thankYouScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Recept ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.receptScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Viedo call",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.viedoCallScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
