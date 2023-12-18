import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';
import 'package:hdsn/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PatientcomponentlistItemWidget extends StatelessWidget {
  const PatientcomponentlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 63.adaptSize,
            width: 63.adaptSize,
            padding: EdgeInsets.all(13.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconPatient,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "I’m a patient",
                  style: CustomTextStyles.bodyLargePrimary,
                ),
                SizedBox(height: 20.v),
                Text(
                  "Proin convallis libero ac nisl ",
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
