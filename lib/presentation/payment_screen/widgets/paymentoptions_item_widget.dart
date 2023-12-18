import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';

// ignore: must_be_immutable
class PaymentoptionsItemWidget extends StatelessWidget {
  const PaymentoptionsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconCheck,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 3.v,
            ),
            child: Text(
              "PayPal",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Spacer(),
          SizedBox(
            height: 25.v,
            width: 21.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorIndigo800,
                  height: 22.v,
                  width: 19.h,
                  alignment: Alignment.topLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorLightBlue600,
                  height: 19.v,
                  width: 16.h,
                  alignment: Alignment.bottomRight,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorIndigo900,
                  height: 9.v,
                  width: 12.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 5.v,
                    right: 1.h,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 15.v,
            width: 25.h,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 7.v,
              bottom: 3.v,
            ),
          ),
          Container(
            height: 19.v,
            width: 38.h,
            margin: EdgeInsets.only(top: 7.v),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorLightBlue60015x13,
                  height: 15.v,
                  width: 13.h,
                  alignment: Alignment.topCenter,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorLightBlue60010x13,
                  height: 10.v,
                  width: 13.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 3.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorIndigo80013x12,
                  height: 13.v,
                  width: 12.h,
                  alignment: Alignment.bottomLeft,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorLightBlue60015x5,
            height: 15.v,
            width: 5.h,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }
}
