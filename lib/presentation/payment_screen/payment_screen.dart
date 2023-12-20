import '../payment_screen/widgets/paymentoptions_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/presentation/home_one_page/home_one_page.dart';
import 'package:hdsn/widgets/app_bar/appbar_leading_image.dart';
import 'package:hdsn/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hdsn/widgets/app_bar/custom_app_bar.dart';
import 'package:hdsn/widgets/custom_bottom_bar.dart';
import 'package:hdsn/widgets/custom_elevated_button.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Paymemt Options",
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              SizedBox(height: 34.v),
              _buildPaymentOptions(context),
              Spacer(),
              SizedBox(height: 50.v),
              CustomElevatedButton(
                width: 204.h,
                text: "Pay",
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 31.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconArrowLeft,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 22.v,
          bottom: 21.v,
        ),
      ),
      title: AppbarSubtitleTwo(
        text: "Back",
        margin: EdgeInsets.only(left: 6.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentOptions(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 14.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return PaymentoptionsItemWidget();
      },
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
