import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key})
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                bottom: 9.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Dr. Marvin McKinney",
                        style: CustomTextStyles.bodyLarge16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "(317 reviews)",
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
                          bottom: 2.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "4.6",
                          style: CustomTextStyles.titleSmallOnPrimary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "Nephrologyst",
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
