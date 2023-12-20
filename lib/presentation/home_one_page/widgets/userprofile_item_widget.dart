import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUser36x36,
                height: 36.adaptSize,
                width: 36.adaptSize,
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 1.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Eleanor Pena",
                      style: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "Pediatrics",
                      style: CustomTextStyles.labelLargeIndigo50,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 29.h,
                  top: 5.v,
                  bottom: 19.v,
                ),
                child: Text(
                  "(220 reviews)",
                  style: CustomTextStyles.labelLargeIndigo50,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconStar,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.only(
                  left: 3.h,
                  top: 5.v,
                  bottom: 19.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 2.h,
                  top: 2.v,
                  bottom: 18.v,
                ),
                child: Text(
                  "4.8",
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIconCalendar,
                height: 15.v,
                width: 14.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "23 Mar",
                  style: CustomTextStyles.titleSmallOnPrimaryContainer_1,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconTime,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(left: 22.h),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "16:00",
                  style: CustomTextStyles.titleSmallOnPrimaryContainer_1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 156.h),
                child: Text(
                  "80",
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
