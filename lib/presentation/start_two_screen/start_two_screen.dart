import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/widgets/app_bar/appbar_subtitle.dart';
import 'package:hdsn/widgets/app_bar/appbar_title_image.dart';
import 'package:hdsn/widgets/app_bar/custom_app_bar.dart';
import 'package:hdsn/widgets/custom_elevated_button.dart';

class StartTwoScreen extends StatelessWidget {
  const StartTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 583.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL38,
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 31.v),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup6,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildAppBar(context),
                                  Spacer(
                                    flex: 39,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.img12110I518006SM005C12,
                                    height: 151.v,
                                    width: 161.h,
                                    margin: EdgeInsets.only(left: 49.h),
                                  ),
                                  Spacer(
                                    flex: 60,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.img12110I518006SM005C12161x147,
                          height: 161.v,
                          width: 147.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(top: 85.v),
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.img12110I518006SM005C12161x92,
                          height: 161.v,
                          width: 92.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(bottom: 158.v),
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.img12110I518006SM005C12136x144,
                          height: 136.v,
                          width: 144.h,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(bottom: 207.v),
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.img12110I518006SM005C12177x92,
                          height: 177.v,
                          width: 92.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 103.v),
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.img12110I518006SM005C12239x121,
                          height: 239.v,
                          width: 121.h,
                          alignment: Alignment.bottomRight,
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.img12110I518006SM005C12197x135,
                          height: 197.v,
                          width: 135.h,
                          alignment: Alignment.bottomLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img1doctorNurses,
                          height: 491.v,
                          width: 281.h,
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(bottom: 23.v),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Container(
                    width: 319.h,
                    margin: EdgeInsets.symmetric(horizontal: 47.h),
                    child: Text(
                      "Manage your health and happy future",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineMedium!.copyWith(
                        height: 1.36,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 33.v),
              CustomElevatedButton(
                width: 204.h,
                text: "Get started",
              ),
              SizedBox(height: 78.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 32.v,
      centerTitle: true,
      title: Row(
        children: [
          AppbarTitleImage(
            imagePath: ImageConstant.imgLogoMedicine1Secondarycontainer,
          ),
          AppbarSubtitle(
            text: "Self Care",
            margin: EdgeInsets.only(
              left: 11.h,
              top: 5.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }
}
