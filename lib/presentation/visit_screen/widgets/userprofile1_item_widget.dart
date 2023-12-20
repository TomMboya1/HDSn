import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 79.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "23",
            style: CustomTextStyles.titleMediumOnPrimaryContainer_1,
          ),
          SizedBox(height: 2.v),
          Text(
            "March",
            style: CustomTextStyles.bodySmallOnPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
