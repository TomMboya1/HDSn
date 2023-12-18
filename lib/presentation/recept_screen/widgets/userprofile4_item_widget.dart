import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  const Userprofile4ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.symmetric(
              horizontal: 2.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.img12110I518006SM005C1238x35,
              height: 38.v,
              width: 35.h,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Doxepin",
                  style: CustomTextStyles.bodyLarge16,
                ),
                SizedBox(height: 2.v),
                Text(
                  "1 pill before sleep (take 1 mounth)",
                  style: CustomTextStyles.bodyMediumGilroyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
