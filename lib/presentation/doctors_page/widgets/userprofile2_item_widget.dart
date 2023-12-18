import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  const Userprofile2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUser36x36,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 9.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr. Floyd Miles",
                  style: CustomTextStyles.titleMediumGilroy,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Pediatrics",
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 29.v,
            ),
            child: Text(
              "(123 reviews)",
              style: CustomTextStyles.labelLargeBluegray100,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconStar,
            height: 14.adaptSize,
            width: 14.adaptSize,
            margin: EdgeInsets.only(
              left: 2.h,
              top: 3.v,
              bottom: 31.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 2.v,
              bottom: 28.v,
            ),
            child: Text(
              "4.9",
              style: CustomTextStyles.titleSmallOnPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
