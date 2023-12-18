import 'package:flutter/material.dart';
import 'package:hdsn/core/app_export.dart';

class StartOneScreen extends StatelessWidget {
  const StartOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 96.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 47,
              ),
              Text(
                "Self Care",
                style: CustomTextStyles.headlineMediumGilroy,
              ),
              SizedBox(height: 32.v),
              CustomImageView(
                imagePath: ImageConstant.imgLogoMedicine1,
                height: 115.v,
                width: 119.h,
              ),
              Spacer(
                flex: 52,
              ),
              Text(
                "Loading...",
                style: CustomTextStyles.bodyLargeBluegray100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
