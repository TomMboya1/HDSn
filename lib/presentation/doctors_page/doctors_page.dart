import '../doctors_page/widgets/userprofile2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class DoctorsPage extends StatefulWidget {
  const DoctorsPage({Key? key})
      : super(
          key: key,
        );

  @override
  DoctorsPageState createState() => DoctorsPageState();
}

class DoctorsPageState extends State<DoctorsPage>
    with AutomaticKeepAliveClientMixin<DoctorsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHorizontalScroll(context),
                      SizedBox(height: 26.v),
                      Text(
                        "All",
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 12.v),
                      _buildUserProfile(context),
                    ],
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
  Widget _buildHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 98.v,
          width: 388.h,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 98.v,
                      width: 110.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 98.v,
                              width: 110.h,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1),
                                borderRadius: BorderRadius.circular(
                                  14.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomIconButton(
                                    height: 43.adaptSize,
                                    width: 43.adaptSize,
                                    padding: EdgeInsets.all(9.h),
                                    decoration:
                                        IconButtonStyleHelper.fillDeepOrange,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgIconHeart,
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  Text(
                                    "Cardiologyst",
                                    style: CustomTextStyles.bodySmallOnPrimary,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 98.v,
                      width: 118.h,
                      decoration: BoxDecoration(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        borderRadius: BorderRadius.circular(
                          14.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 118.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 15.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder13,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 43.adaptSize,
                        width: 43.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 9.v,
                        ),
                        decoration: AppDecoration.fillIndigo50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconEyeIndigo300,
                          height: 21.adaptSize,
                          width: 21.adaptSize,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "Ophthalmologyst",
                        style: CustomTextStyles.bodySmallOnPrimary,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(right: 26.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 37.h,
                    vertical: 15.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder13,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 43.adaptSize,
                        width: 43.adaptSize,
                        padding: EdgeInsets.all(10.h),
                        decoration: AppDecoration.fillOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconTooth,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "Dentist",
                        style: CustomTextStyles.bodySmallOnPrimary,
                      ),
                    ],
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
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 26.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 10.v,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return Userprofile2ItemWidget();
        },
      ),
    );
  }
}
