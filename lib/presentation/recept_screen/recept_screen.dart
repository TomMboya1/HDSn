import '../recept_screen/widgets/userprofile4_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/presentation/home_one_page/home_one_page.dart';
import 'package:hdsn/widgets/app_bar/appbar_leading_image.dart';
import 'package:hdsn/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hdsn/widgets/app_bar/custom_app_bar.dart';
import 'package:hdsn/widgets/custom_bottom_bar.dart';
import 'package:hdsn/widgets/custom_radio_button.dart';

class ReceptScreen extends StatelessWidget {
  ReceptScreen({Key? key})
      : super(
          key: key,
        );

  String quisqueVestibulumNibh = "";

  List<String> radioList = ["msg_drink_plenty_of", "msg_get_out_into_the"];

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
                  "Recipes",
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              SizedBox(height: 22.v),
              _buildUserProfile(context),
              SizedBox(height: 27.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUser36x36,
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      margin: EdgeInsets.only(top: 4.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. Floyd Miles",
                            style: CustomTextStyles.bodyLarge16,
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "Pediatrics",
                            style: theme.textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.v),
              _buildVitaminB16(
                context,
                vitaminBLabel: "Vitamin A",
                durationLabel: "1 pill after eating (take 14 days)",
              ),
              SizedBox(height: 12.v),
              _buildRecommendations(context),
              SizedBox(height: 12.v),
              _buildVitaminB16(
                context,
                vitaminBLabel: "Vitamin B16",
                durationLabel: "1 pill after eating (take 14 days)",
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
  Widget _buildUserProfile(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUser36x36,
              height: 36.adaptSize,
              width: 36.adaptSize,
              margin: EdgeInsets.only(top: 5.v),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr. Jacob Jones",
                    style: CustomTextStyles.bodyLarge16,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "Nephrologyst",
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 16.v),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 12.v,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return Userprofile4ItemWidget();
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRecommendations(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Recommendations for treatment",
            style: CustomTextStyles.bodyLarge16,
          ),
          SizedBox(height: 3.v),
          SizedBox(
            width: 324.h,
            child: Text(
              "Quisque vestibulum nibh nibh, eget porta risus mollis ut. Aliquam erat volutpat. Praesent tincidunt massa eget nulla faucibus",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumGilroyMedium,
            ),
          ),
          SizedBox(height: 15.v),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 30.h),
                child: CustomRadioButton(
                  text: "Drink plenty of fluids ",
                  value: radioList[0],
                  groupValue: quisqueVestibulumNibh,
                  onChange: (value) {
                    quisqueVestibulumNibh = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: CustomRadioButton(
                  text: "Get out into the fresh air",
                  value: radioList[1],
                  groupValue: quisqueVestibulumNibh,
                  onChange: (value) {
                    quisqueVestibulumNibh = value;
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 2.v),
        ],
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
  Widget _buildVitaminB16(
    BuildContext context, {
    required String vitaminBLabel,
    required String durationLabel,
  }) {
    return Container(
      padding: EdgeInsets.all(18.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Row(
        children: [
          Container(
            height: 42.adaptSize,
            width: 42.adaptSize,
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            decoration: AppDecoration.fillPurple.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.img12110I518006SM005C1238x35,
              height: 38.v,
              width: 35.h,
              alignment: Alignment.bottomCenter,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  vitaminBLabel,
                  style: CustomTextStyles.bodyLarge16.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                  ),
                ),
                SizedBox(height: 3.v),
                Text(
                  durationLabel,
                  style: CustomTextStyles.bodyMediumGilroyMedium.copyWith(
                    color: appTheme.gray500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
